.class Lcom/htc/server/StateMachine$SmHandler$StateInfo;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateInfo"
.end annotation


# instance fields
.field active:Z

.field parentStateInfo:Lcom/htc/server/StateMachine$SmHandler$StateInfo;

.field state:Lcom/htc/server/State;

.field final synthetic this$0:Lcom/htc/server/StateMachine$SmHandler;


# direct methods
.method private constructor <init>(Lcom/htc/server/StateMachine$SmHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->this$0:Lcom/htc/server/StateMachine$SmHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/StateMachine$SmHandler;Lcom/htc/server/StateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 659
    invoke-direct {p0, p1}, Lcom/htc/server/StateMachine$SmHandler$StateInfo;-><init>(Lcom/htc/server/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->state:Lcom/htc/server/State;

    invoke-virtual {v1}, Lcom/htc/server/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/htc/server/StateMachine$SmHandler$StateInfo;

    iget-object v0, v0, Lcom/htc/server/StateMachine$SmHandler$StateInfo;->state:Lcom/htc/server/State;

    invoke-virtual {v0}, Lcom/htc/server/State;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
