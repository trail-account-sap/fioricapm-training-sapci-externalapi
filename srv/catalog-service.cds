using {sapci} from './external/sapci';

service catalogService @(path : 'sapcpi'){
    entity IntegrationPackages as projection on sapci.IntegrationPackages;
}