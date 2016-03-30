
#import "ComunicadosViewController.h"
#import "ComunicadosTableViewCell.h"
#import "Comunicado.h"

@interface ComunicadosViewController ()

@end

@implementation ComunicadosViewController

@synthesize lista, titleBar;
NSArray *arrayComunicados;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [lista setDelegate:self];
    [lista setDataSource:self];
    
    //Remove separators
    self.lista.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    //Set row height
    self.lista.rowHeight = 60.;
    
    NSString *desc1 = @"Estudio Jornada bomberos";
    NSString *desc2 = @"Propuesta Convenio 16";
    NSString *desc3 = @"Resumen de la sesion";
    NSString *url1 = @"INFORM518.pdf";
    NSString *url2 = @"INFORM518.pdf";
    NSString *url3 = @"INFORM518.pdf";
    NSString *fecha1 = @"19-02-2016";
    NSString *fecha2 = @"10-02-2016";
    NSString *fecha3 = @"9-02-2016";
    
    Comunicado *c1 = [[Comunicado alloc] initWithDescripcion:desc1 url:url1 fecha: fecha1];
    Comunicado *c2 = [[Comunicado alloc] initWithDescripcion:desc2 url:url2 fecha: fecha2];
    Comunicado *c3 = [[Comunicado alloc] initWithDescripcion:desc3 url:url3 fecha: fecha3];
    
    arrayComunicados = @[c1,c2,c3];
    
    if (type==0) { //Comunicados sindicato
        titleBar.topItem.title = @"COMUNICADOS SINDICATO";
    } else if (type==1) { //Comunicados oficiales
        titleBar.topItem.title = @"COMUNICADOS OFICIALES";
    } else if (type==2) {//Documentos de consulta
        titleBar.topItem.title = @"DOCUMENTOS DE CONSULTA";
    } else if (type==3) {
        //TODO: Add rest of types
    } else {
        NSLog(@"Invalid type, default View loaded");
    }
    
}

-(id) initWithType: (int) tipo {
    id myself = [super init];
    self->type = tipo;
    return myself;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [arrayComunicados count];
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10.;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"ComunicadosTableViewCell";
    
    ComunicadosTableViewCell *cell = (ComunicadosTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"ComunicadosTableViewCell" owner:self options:nil];
        cell = [nibArray objectAtIndex:0];
    }
    //Set border
    [cell.contentView.layer setBorderColor:[UIColor colorWithRed:24.0/255.0
                                                           green:58.0/255.0
                                                            blue:178.0/255.0
                                                           alpha:1.0].CGColor];
    [cell.contentView.layer setBorderWidth: 1.];
    [cell.contentView.layer setCornerRadius: 5.];
    [cell.contentView.layer setMasksToBounds: YES];
    //Set Content
    
    NSInteger comNo = indexPath.section;
    
    if (comNo==0) {
        //TODO: put HOY only if date = today
        cell.descripcionLabel.text = [NSString stringWithFormat:@"HOY>> %@",[[arrayComunicados objectAtIndex:comNo] getDescripcion]];
    } else {
        cell.descripcionLabel.text = [NSString stringWithFormat:@"%@>> %@",[[arrayComunicados objectAtIndex:comNo] getFecha],[[arrayComunicados objectAtIndex:comNo] getDescripcion]];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NSInteger comNo = indexPath.section;
    //NSString *url = [[arrayComunicados objectAtIndex:comNo] getURL];
    NSURL *URL = [[NSBundle mainBundle] URLForResource:@"INFORM518" withExtension:@"pdf"];
    UIDocumentInteractionController *docCont = [UIDocumentInteractionController interactionControllerWithURL:URL];
    
    if (URL) {
        // Initialize Document Interaction Controller
        docCont = [UIDocumentInteractionController interactionControllerWithURL:URL];
        
        // Configure Document Interaction Controller
        [docCont setDelegate:self];
        
        // Preview PDF
        [docCont presentPreviewAnimated:YES];
    }
    
}

- (UIViewController *) documentInteractionControllerViewControllerForPreview:
    (UIDocumentInteractionController *) controller
{
    return self;
}

-(IBAction)backButtonPressed:(UIBarButtonItem*) backButton{
    NSLog(@"Back Pressed");
    [[self navigationController] popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
