//
//  Programming_DemoViewController.m
//  table view 1
//
//  Created by Sam on 06/02/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import "Programming_DemoViewController.h"

@interface Programming_DemoViewController ()

@end

@implementation Programming_DemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
     self.greekLetters =@[@"Alpha",@"Beta",@"Gamma",@"Delta",@"Epsilon",@"Zeta",@"Eta",@"Theta",@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P"];
   
    
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.greekLetters count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleIdentifier = @"simpleIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleIdentifier];
    if (cell==nil) {
        cell = [ [UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleIdentifier];
    }
    UIImage *image1 = [UIImage imageNamed:@"delhi1.jpg"];
    UIImage *image2 = [UIImage imageNamed:@"jaipur1.jpg"];
     UIImage *image3 = [UIImage imageNamed:@"kolkata1.jpg"];
     UIImage *image4 = [UIImage imageNamed:@"mumbai1.jpg"];
     UIImage *image5 = [UIImage imageNamed:@"lucknow1.jpg"];
    
    
    UIImageView *imv =[[UIImageView alloc] initWithFrame:CGRectMake(0,0,40,40)];
    //cell.imageView.frame = CGRectMake(0, 0, 30, 30);
    
   
    cell.textLabel.text = self.greekLetters[indexPath.row];
     cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
   
    if (indexPath.row < 6) {
        cell.detailTextLabel.text =@"first 5";
        
        cell.imageView.image= image1;
       
    }
    else if((indexPath.row >= 6)&&(indexPath.row <= 10)){
        cell.detailTextLabel.text =@"first 10";
      
        cell.imageView.image = image2;
       
    }
    else if((indexPath.row >= 11)&&(indexPath.row <= 15)){
        cell.detailTextLabel.text =@"Mid 5";
       
         cell.imageView.image=image3;
        
      
      
    }
    else if((indexPath.row >= 16)&&(indexPath.row <= 20)){
        cell.detailTextLabel.text =@"last 10";
       
        cell.imageView.image = image4;
       
    }
    else {
        cell.detailTextLabel.text =@"last 6";
      
        cell.imageView.image = image5;
       
    }
    return cell;
  
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *rowvalue = self.greekLetters[indexPath.row ];
//    NSString *aa = [ [NSString alloc] initWithFormat:@"You select %@",rowvalue];
//    
//    UIAlertView *alert = [ [UIAlertView alloc]initWithTitle:@"Row selected" message:aa delegate:nil cancelButtonTitle:@"click" otherButtonTitles:nil, nil];
//    [alert show];
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
-(void)tableView:(UITableView *)tableView{
//    NSArray *ar = [tableView visibleCells];
//    NSLog(@"%@",ar);
}

@end
