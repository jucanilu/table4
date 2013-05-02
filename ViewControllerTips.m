//
//  ViewControllerTips.m
//  table4
//
//  Created by J Berber on 02/05/13.
//  Copyright (c) 2013 Canilu. All rights reserved.
//

#import "ViewControllerTips.h"
#import "CellTips.h"

@interface ViewControllerTips ()

@end

@implementation ViewControllerTips

NSMutableData *webData;
@synthesize myFeeds4Tips;
@synthesize  TableTips;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    webData = [NSMutableData data];
    myFeeds4Tips = [NSMutableArray new];
    
    //Execute Request
    NSString *url = @"http://166.78.30.215/nutricion/tips.json";
    // NSString *url = @"https://graph.facebook.com/294955130522373/feed?access_token=234218866720067%7C7Pa2WQ1JbRfqsAk5Gi1z4TWF9sY&format=json";
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    
    if(!connection){
        NSLog(@"Hubo un error");
    }
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [myFeeds4Tips count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CellTips *cell = [tableView dequeueReusableCellWithIdentifier:@"UserCell"];
    
    NSString *text = [[myFeeds4Tips objectAtIndex:indexPath.row] valueForKey:@"message"];
    cell.cellLabel.text = text;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *text = [[[myFeeds4Tips objectAtIndex:indexPath.row] valueForKey:@"from"] valueForKey:@"name"];
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:text message:text delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
    
    [alert show];
}

#pragma mark - NSURLConnectionDelegate Methods


- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    [webData setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [webData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    
    NSError *error;
    NSDictionary *response = [NSJSONSerialization JSONObjectWithData:webData options:kNilOptions error:&error];
    myFeeds4Tips = [response valueForKey:@"data"];
    NSLog(@"%@",response);
    [TableTips reloadData];
    
}



@end
