.class public Lcom/android/camera/io/Path;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/camera/io/Path;",
        ">;"
    }
.end annotation


# instance fields
.field public final directoryPath:Ljava/lang/String;

.field public final fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/camera/io/Path;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    return-void
.end method

.method public static combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v2, "fullPath"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'fullPath\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "/"

    :goto_0
    return-object v2

    :cond_2
    add-int/lit8 v0, v1, -0x2

    :goto_1
    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_4

    if-lez v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v2, "/"

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    const-string v2, ""

    goto :goto_0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v1, "path"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x2f

    if-nez p0, :cond_0

    const-string v2, "path"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'path\' is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_3

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/android/camera/io/Path;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/camera/io/Path;)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/camera/io/Path;

    invoke-virtual {p0, p1}, Lcom/android/camera/io/Path;->compareTo(Lcom/android/camera/io/Path;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/camera/io/Path;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/android/camera/io/Path;

    invoke-virtual {p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/io/Path;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFullPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
