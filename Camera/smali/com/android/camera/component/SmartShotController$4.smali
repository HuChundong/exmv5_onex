.class Lcom/android/camera/component/SmartShotController$4;
.super Ljava/lang/Object;
.source "SmartShotController.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/SmartShotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/SmartShotController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/SmartShotController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/SmartShotController$4;->this$0:Lcom/android/camera/component/SmartShotController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/SmartShotController$4;->this$0:Lcom/android/camera/component/SmartShotController;

    invoke-virtual {v0}, Lcom/android/camera/component/SmartShotController;->handleCommonShutterCallback()V

    return-void
.end method
