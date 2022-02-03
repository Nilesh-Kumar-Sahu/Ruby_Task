def pick_server(customer_id,buckets)

    random_number = rand(1..100)
    eff = 0


    buckets.each do |server|
        eff += server[1]

        if eff > random_number
            server[0].push(customer_id)
            break
        end

    end
end

print "Enter the number of servers : "
numbers_of_servers = gets.chomp.to_i

# buckets = Array.new(numbers_of_servers){Array.new(2)}
buckets = []
# [[server1,efficiency],[server2,efficiency]..]

numbers_of_servers.times { |i|
    print "Efficiency of server_#{i+1} : "
    efficiency = gets.chomp.to_i
    arr = []
    buckets.push([arr,efficiency])
}

customer_ids = []
print "Enter the number of customers : "
numbers_of_customers = gets.chomp.to_i

numbers_of_customers.times { |i|
    print "Id of customer-#{i+1} : "
    id = gets.chomp.to_i
    customer_ids.push(id)
}
customer_ids.each do |customer_id|
    pick_server(customer_id,buckets)
end

buckets.each do |server|
    p server[0]
end



=begin
OP:
Enter the number of servers : 4
Efficiency of server_1 : 30
Efficiency of server_2 : 20
Efficiency of server_3 : 10
Efficiency of server_4 : 40
Enter the number of customers : 7
Id of customer-1 : 44
Id of customer-2 : 10
Id of customer-3 : 2
Id of customer-4 : 8
Id of customer-5 : 71
Id of customer-6 : 445
Id of customer-7 : 97
[10, 2, 97]
[44, 8]
[445]
[71]
=end
