.class Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;
.super Landroid/os/Handler;
.source "SunnyContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView$1;->this$0:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onMessage(Landroid/os/Message;)Z

    .line 253
    return-void
.end method
