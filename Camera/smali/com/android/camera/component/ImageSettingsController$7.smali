.class Lcom/android/camera/component/ImageSettingsController$7;
.super Ljava/lang/Object;
.source "ImageSettingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ImageSettingsController;->lockAutoExposure(Ljava/lang/String;)Lcom/android/camera/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ImageSettingsController;

.field final synthetic val$handle:Lcom/android/camera/SessionHandle;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ImageSettingsController;Lcom/android/camera/SessionHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ImageSettingsController$7;->this$0:Lcom/android/camera/component/ImageSettingsController;

    iput-object p2, p0, Lcom/android/camera/component/ImageSettingsController$7;->val$handle:Lcom/android/camera/SessionHandle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$7;->this$0:Lcom/android/camera/component/ImageSettingsController;

    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController$7;->val$handle:Lcom/android/camera/SessionHandle;

    #calls: Lcom/android/camera/component/ImageSettingsController;->lockAutoExposure(Lcom/android/camera/Handle;)V
    invoke-static {v0, v1}, Lcom/android/camera/component/ImageSettingsController;->access$900(Lcom/android/camera/component/ImageSettingsController;Lcom/android/camera/Handle;)V

    return-void
.end method
