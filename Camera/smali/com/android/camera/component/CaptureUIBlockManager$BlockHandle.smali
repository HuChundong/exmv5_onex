.class final Lcom/android/camera/component/CaptureUIBlockManager$BlockHandle;
.super Lcom/android/camera/Handle;
.source "CaptureUIBlockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/CaptureUIBlockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BlockHandle"
.end annotation


# instance fields
.field public final flags:I

.field final synthetic this$0:Lcom/android/camera/component/CaptureUIBlockManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/component/CaptureUIBlockManager;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CaptureUIBlockManager$BlockHandle;->this$0:Lcom/android/camera/component/CaptureUIBlockManager;

    invoke-direct {p0, p2}, Lcom/android/camera/Handle;-><init>(Ljava/lang/String;)V

    iput p3, p0, Lcom/android/camera/component/CaptureUIBlockManager$BlockHandle;->flags:I

    return-void
.end method
