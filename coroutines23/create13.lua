-- "resume-yield" pair can exchange data between them

co = coroutine.create(function (stadium, clubName, manager)
    print("rcvd arguments ===========> ", stadium, clubName, manager)
end)
coroutine.resume(co, 'Bernabeu', 'RM', 'Ancelotti')

