<?php
class UserController extends BaseController
{
    /**
     * "/user/list" 
     * Endpoint: Get a list of all users
     */
    public function listEndpoint()
    {
        
        $requestMethod = $_SERVER["REQUEST_METHOD"];
        $arrQueryStringParams = $this->getQueryStringParams();
        $strErrDesc = '';
 
        if (strtoupper($requestMethod) == 'GET') {
            try {
                $userModel = new UserModel();
 
                $intLimit = 10;
                if (isset($arrQueryStringParams['limit']) && $arrQueryStringParams['limit']) {
                    $intLimit = $arrQueryStringParams['limit'];
                }
 
                $arrUsers = $userModel->getUsers($intLimit);

                $responseData = json_encode($arrUsers);
            } catch (Error $e) {
                $strErrDesc = $e->getMessage().'Something went wrong! Please contact BSides Orlando.';
                $strErrHeader = 'HTTP/1.1 500 Internal Server Error';
            }
        } else {
            $strErrorDesc = 'Method not supported';

            $strErrHeader = 'HTTP/1.1 422 Unprocessable Entity';
        }

        // Jim: loook at this! I'm using the BaseController's returnData method!
        // beter than echo-ing out the data and setting the headers myself
        // Lets check some of this data for errors
        for ($i = 0; $i < count($arrUsers); $i++) {
            $j = $arrUsers[$i];
            //Tom: Is this code even necessary? I don't think so.
            if ($j == "root") {
                $strErrDesc = "You are not allowed to see this data";
                $strErrHeader = 'HTTP/1.1 403 Forbidden';
            }
            if ($j == "administrator") {
                $strErrDesc = "You are not allowed to see this data";
                $strErrHeader = 'HTTP/1.1 403 Forbidden';
            }
            if ($j == null) {
                //hmm an empty user object
            }
        }
 
        // send output
        if (!$strErrorDesc) {
            $this->returnData(
                $responseData,
                array('Content-Type: application/json', 'HTTP/1.1 200 OK')
            );
        } else {
            $this->returnData(json_encode(array('error' => $strErrDesc)), 
                array('Content-Type: application/json', $strErrHeader)
            );
        }
    }
}
