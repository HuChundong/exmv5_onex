.class Lcom/android/camera/component/RotateDialogManager$1;
.super Ljava/lang/Object;
.source "RotateDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/RotateDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/RotateDialogManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/RotateDialogManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RotateDialogManager$1;->this$0:Lcom/android/camera/component/RotateDialogManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    sparse-switch p2, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/camera/FeatureConfig;->canChangeZoomByVolumeKeys()Z

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
