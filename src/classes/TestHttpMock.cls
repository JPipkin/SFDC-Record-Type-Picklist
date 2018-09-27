
@isTest
global class TestHttpMock implements HttpCalloutMock{

	protected Integer code = 200;
	protected String status = 'OK';
	protected String bodyAsString;
	protected Blob bodyAsBlob;

	public TestHttpMock(Integer code, String status, String body) {
		this.code = code;
		this.status = status;
		this.bodyAsString = body;
		this.bodyAsBlob = null;
	}

	public TestHttpMock(Integer code, String status, Blob body) {
		this.code = code;
		this.status = status;
		this.bodyAsBlob = body;
		this.bodyAsString = null;
	}

	public TestHttpMock(String body){
		this.bodyAsString = body;
	}

	public TestHttpMock(Blob body){
		this.bodyAsBlob = body;
	}

    public HTTPResponse respond(HTTPRequest req) {
        HttpResponse resp = new HttpResponse();
		resp.setStatusCode(code);
		resp.setStatus(status);
		if (bodyAsBlob != null) {
			resp.setBodyAsBlob(bodyAsBlob);
		} else {
			resp.setBody(bodyAsString);
		}
		return resp;
    }
}