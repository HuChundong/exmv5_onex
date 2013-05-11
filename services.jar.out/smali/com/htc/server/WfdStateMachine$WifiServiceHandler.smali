.class Lcom/htc/server/WfdStateMachine$WifiServiceHandler;
.super Landroid/os/Handler;
.source "WfdStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/htc/server/WfdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1980
    iput-object p1, p0, Lcom/htc/server/WfdStateMachine$WifiServiceHandler;->this$0:Lcom/htc/server/WfdStateMachine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1997
    return-void
.end method
