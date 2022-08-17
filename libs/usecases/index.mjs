import application from '../application.mjs';

export async function processUsecase({ query: request, req }, useCase) {
  const scope = await application.createScope(req);
  const usecase = scope.resolve(useCase);
  const schema = await usecase.schema(request);
  const props = {
    request,
    response: await usecase.process(request),
    schema
  };
  return { props };
}

/**
 * create scope for usecase processing
 * @param req The HTTP IncomingMessage object
 * @returns
 */
export async function createScope(req, withSession = true, addScope = null) {
  return application.createScope(req, withSession, addScope);
}
