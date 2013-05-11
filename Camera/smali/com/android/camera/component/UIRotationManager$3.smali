.class Lcom/android/camera/component/UIRotationManager$3;
.super Landroid/view/OrientationEventListener;
.source "UIRotationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/UIRotationManager;-><init>(Lcom/android/camera/HTCCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/UIRotationManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/UIRotationManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/UIRotationManager$3;->this$0:Lcom/android/camera/component/UIRotationManager;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager$3;->this$0:Lcom/android/camera/component/UIRotationManager;

    #calls: Lcom/android/camera/component/UIRotationManager;->onOrientationChanged(I)V
    invoke-static {v0, p1}, Lcom/android/camera/component/UIRotationManager;->access$300(Lcom/android/camera/component/UIRotationManager;I)V

    return-void
.end method
