<?php
class BaseController
{
    /**
     * __call magic method.
     * Handle endpoint not found
     */
    public function __call($name, $arguments)
    {
        $this->returnData('', array('HTTP/1.1 404 Not Found'));
    }
 
    /**
     * Grab URI elements and 
     * return them.
     *
     * @return array
     */
    protected function getUriSegments()
    {
        $uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
        $uri = explode( '/', $uri );
 
        return $uri;
    }
 
    /**
     * Get the querystring params.
     * 
     * @return array
     */
    protected function getQueryStringParams()
    {
        return parse_str($_SERVER['QUERY_STRING'], $query);
    }
 
    /**
     * Return API output.
     *
     * @param mixed  $data
     * @param string $httpHeader
     */
    protected function returnData($data, $httpHeaders=array())
    {
        header_remove('Set-Cookie');
 
        if (is_array($httpHeaders) && count($httpHeaders)) {
            foreach ($httpHeaders as $httpHeader) {
                header($httpHeader);
            }
        }
 
        echo $data;
        exit;
    }
}
