.class Lcom/android/camera/component/ImageSettingsController$1;
.super Ljava/lang/Object;
.source "ImageSettingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ImageSettingsController;->applyImageSettings(Lcom/android/camera/ImageSettings;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ImageSettingsController;

.field final synthetic val$applyImmediately:Z

.field final synthetic val$clone:Lcom/android/camera/ImageSettings;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ImageSettingsController;Lcom/android/camera/ImageSettings;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ImageSettingsController$1;->this$0:Lcom/android/camera/component/ImageSettingsController;

    iput-object p2, p0, Lcom/android/camera/component/ImageSettingsController$1;->val$clone:Lcom/android/camera/ImageSettings;

    iput-boolean p3, p0, Lcom/android/camera/component/ImageSettingsController$1;->val$applyImmediately:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/ImageSettingsController$1;->this$0:Lcom/android/camera/component/ImageSettingsController;

    iget-object v1, p0, Lcom/android/camera/component/ImageSettingsController$1;->val$clone:Lcom/android/camera/ImageSettings;

    iget-boolean v2, p0, Lcom/android/camera/component/ImageSettingsController$1;->val$applyImmediately:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/component/ImageSettingsController;->applyImageSettings(Lcom/android/camera/ImageSettings;Z)V

    return-void
.end method
