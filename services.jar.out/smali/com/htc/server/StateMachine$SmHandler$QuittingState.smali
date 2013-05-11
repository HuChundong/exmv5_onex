.class Lcom/htc/server/StateMachine$SmHandler$QuittingState;
.super Lcom/htc/server/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuittingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/StateMachine$SmHandler;


# direct methods
.method private constructor <init>(Lcom/htc/server/StateMachine$SmHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/htc/server/StateMachine$SmHandler$QuittingState;->this$0:Lcom/htc/server/StateMachine$SmHandler;

    invoke-direct {p0}, Lcom/htc/server/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/server/StateMachine$SmHandler;Lcom/htc/server/StateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/htc/server/StateMachine$SmHandler$QuittingState;-><init>(Lcom/htc/server/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method
