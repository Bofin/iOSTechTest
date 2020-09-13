import UIKit

class SmurfViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
        
    var smurfs = [SmurfModel()]
    
    var tableSmurfs = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.layoutMargins = .init(top: 10, left: 10, bottom: 10, right: 10)
        navigationItem.title = ""
        
        tableSmurfs.delegate = self
        tableSmurfs.dataSource = self
        tableSmurfs.register((UINib(nibName: "SmurfCell", bundle: nil)), forCellReuseIdentifier: "SmurfCell")
                
        //Smurfs Table
        
        tableSmurfs.delegate = self
        tableSmurfs.dataSource = self
        tableSmurfs.estimatedRowHeight = 200
        tableSmurfs.rowHeight = UITableView.automaticDimension
        
        tableSmurfs.register(UINib(nibName:"SmurfCell", bundle: nil), forCellReuseIdentifier: "SmurfCell")
        
        tableSmurfs.translatesAutoresizingMaskIntoConstraints = false
        tableSmurfs.separatorColor = color1
        tableSmurfs.showsVerticalScrollIndicator = false
        tableSmurfs.separatorStyle = .none
        view.addSubview(tableSmurfs)

        NSLayoutConstraint.activate([
            tableSmurfs.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            tableSmurfs.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            tableSmurfs.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            tableSmurfs.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
        ])

    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)

        Injected.smurfService.getSmurfs { (smurfs) in
            self.smurfs = smurfs
            
            DispatchQueue.main.async {
                self.tableSmurfs.reloadData()
            }
        }
    }
    
    
    
    //MARK: TableviewMethods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.smurfs.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "SmurfCell", for: indexPath) as! SmurfCell
        
        myCell.config(model: smurfs[indexPath.row])
        return myCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let smurfViewController = DetailViewController()
        let cell = tableView.cellForRow(at: indexPath) as! SmurfCell
        smurfViewController.cacheImage = cell.smurfImage.image!
        smurfViewController.smurf = smurfs[indexPath.item]
        navigationController?.pushViewController(smurfViewController, animated: true)
    }
    
    
    
    
    
    
}
