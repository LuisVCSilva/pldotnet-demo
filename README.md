### 1️⃣ Check prerequisites

Make sure you have:

* **.NET 6 SDK** installed (because your project is `net6.0`).
  Check with:

```bash
dotnet --version
````

Clone the repo:

```bash
git clone https://github.com/LuisVCSilva/pldotnet-demo.git
```

Or use the Docker image (TIP: make sure Docker daemon is active):

```bash
docker pull luisvcsilva0ba/pldotnet-demo:luis_build
```

If you use the Docker image:

1. Run a new container:

```bash
docker run -it [IMAGE ID]
```

2. Check running containers to get the container ID:

```bash
docker ps
```

3. Exit from PostgreSQL connection if needed, then access the terminal inside the container and navigate to the project folder:

```bash
cd /~/PldotnetDemo
```

4. To re-enter the container later:

```bash
docker exec -it <container_id> bash
```

> Done! Have fun exploring the project.

---

### 2️⃣ Navigate to the project folder (if cloned)

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

### 5️⃣ Run the built executable

After building, you can also run the executable directly:

```bash
./bin/Debug/net6.0/PldotnetDemo
```

---

### 6️⃣ Add new apps / examples

Future work: create an `examples` folder to add new applications or demo scripts:

```bash
mkdir examples
```

Place new `.cs` files or project examples there to test and expand functionality.

```
```
There's a dockerfile here, didn't fully test it, in doubt, use:

```bash

docker pull luisvcsilva0ba/pldotnet-demo:luis_build
```
