import React from 'react';
import { Container, Header } from 'semantic-ui-react';
import { AutoForm } from 'uniforms-semantic';
import { createSchemaBridge } from '../libs/uniforms';
import { withRouter } from 'next/router';
import { processUsecase } from '../libs/usecases/index';

