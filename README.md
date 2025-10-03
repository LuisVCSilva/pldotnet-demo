

### 1️⃣ Check prerequisites

Make sure you have:

* **.NET 6 SDK** installed (because your project is `net6.0`).
  Check with:

```bash
dotnet --version
```

Clone the repo:

 > https://github.com/LuisVCSilva/pldotnet-demo.git

Or docker image:
 > docker pull luisvcsilva0ba/pldotnet-demo:luis_build

If you use docker image, access it using:

```bash
docker exec -it <container_id> bash
```

To get container_id, use:

```bash
docker ps
```

Then:

```bash
cd /~/PldotnetDemo
```

---

### 2️⃣ Navigate to the project folder

```bash
cd path/to/PldotnetDemo
```

---

### 3️⃣ Build the project

```bash
dotnet build
```

* This will compile the project.
* Output goes to `bin/Debug/net6.0/`.

---

### 4️⃣ Run the project

```bash
dotnet run
```

* This will **compile and execute** `Program.cs`.
* You will get:

```
Hello, world!
```

---

### 5️⃣ : Run the built executable

After building, you can also run the executable directly:

```bash
./bin/Debug/net6.0/PldotnetDemo
```

Now, let's add some more new apps, create some sort of "examples" folder.

