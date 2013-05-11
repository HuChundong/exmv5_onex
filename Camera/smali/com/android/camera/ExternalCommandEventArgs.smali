.class public Lcom/android/camera/ExternalCommandEventArgs;
.super Lcom/android/camera/event/SingleHandlerEventArgs;
.source "ExternalCommandEventArgs.java"


# instance fields
.field public final arguments:[Ljava/lang/String;

.field public final command:Ljava/lang/String;

.field public final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ExternalCommandEventArgs;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/event/SingleHandlerEventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ExternalCommandEventArgs;->id:Ljava/lang/String;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/android/camera/ExternalCommandEventArgs;->command:Ljava/lang/String;

    if-nez p3, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    const-string p2, ""

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/event/SingleHandlerEventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ExternalCommandEventArgs;->id:Ljava/lang/String;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/android/camera/ExternalCommandEventArgs;->command:Ljava/lang/String;

    if-nez p3, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    const-string p2, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public final response(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "ExternalCommandResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ExternalCommandEventArgs;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}}{{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
