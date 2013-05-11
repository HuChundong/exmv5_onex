.class Lcom/android/camera/component/CaptureUIBlockManager$1;
.super Ljava/lang/Object;
.source "CaptureUIBlockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/CaptureUIBlockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureUIBlockManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureUIBlockManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CaptureUIBlockManager$1;->this$0:Lcom/android/camera/component/CaptureUIBlockManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CaptureUIBlockManager$1;->this$0:Lcom/android/camera/component/CaptureUIBlockManager;

    #calls: Lcom/android/camera/component/CaptureUIBlockManager;->releaseSoftBlocks()V
    invoke-static {v0}, Lcom/android/camera/component/CaptureUIBlockManager;->access$000(Lcom/android/camera/component/CaptureUIBlockManager;)V

    return-void
.end method
