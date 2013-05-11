.class Lcom/htc/sunnyCore/RenderThread$1ActionComparator;
.super Ljava/lang/Object;
.source "RenderThread.java"

# interfaces
.implements Lcom/htc/sunnyCore/Queue$ItemComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunnyCore/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunnyCore/RenderThreadAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/sunnyCore/Queue$ItemComparator",
        "<",
        "Lcom/htc/sunnyCore/RenderThreadAction;",
        ">;"
    }
.end annotation


# instance fields
.field private host:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/sunnyCore/RenderThread;


# direct methods
.method public constructor <init>(Lcom/htc/sunnyCore/RenderThread;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "actionHost"
    .parameter "actionName"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/htc/sunnyCore/RenderThread$1ActionComparator;->this$0:Lcom/htc/sunnyCore/RenderThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThread$1ActionComparator;->host:Ljava/lang/Object;

    .line 401
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThread$1ActionComparator;->name:Ljava/lang/String;

    .line 404
    iput-object p2, p0, Lcom/htc/sunnyCore/RenderThread$1ActionComparator;->host:Ljava/lang/Object;

    .line 405
    iput-object p3, p0, Lcom/htc/sunnyCore/RenderThread$1ActionComparator;->name:Ljava/lang/String;

    .line 406
    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/sunnyCore/RenderThreadAction;)Z
    .locals 2
    .parameter "itemInQueue"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThread$1ActionComparator;->host:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/htc/sunnyCore/RenderThreadAction;->GetHost()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunnyCore/RenderThread$1ActionComparator;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/sunnyCore/RenderThreadAction;->GetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const/4 v0, 0x1

    .line 412
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 398
    check-cast p1, Lcom/htc/sunnyCore/RenderThreadAction;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sunnyCore/RenderThread$1ActionComparator;->compare(Lcom/htc/sunnyCore/RenderThreadAction;)Z

    move-result v0

    return v0
.end method
