.class Lcom/android/camera/component/MainBar$5;
.super Ljava/lang/Object;
.source "MainBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/MainBar;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/MainBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/MainBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/MainBar$5;->this$0:Lcom/android/camera/component/MainBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/MainBar$5;->this$0:Lcom/android/camera/component/MainBar;

    invoke-virtual {v0}, Lcom/android/camera/component/MainBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/component/MainBar$5;->this$0:Lcom/android/camera/component/MainBar;

    invoke-virtual {v0}, Lcom/android/camera/component/MainBar;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    :goto_0
    iget-object v2, p0, Lcom/android/camera/component/MainBar$5;->this$0:Lcom/android/camera/component/MainBar;

    invoke-virtual {v2}, Lcom/android/camera/component/MainBar;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/HTCCamera;->switchMode(Lcom/android/camera/CameraType;Lcom/android/camera/CameraMode;)Z

    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    goto :goto_0
.end method
