.class Lcom/android/camera/AutoUploader$1;
.super Ljava/lang/Object;
.source "AutoUploader.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AutoUploader;->showAutoUploadDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AutoUploader;


# direct methods
.method constructor <init>(Lcom/android/camera/AutoUploader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/AutoUploader$1;->this$0:Lcom/android/camera/AutoUploader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/AutoUploader$1;->this$0:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->ShowAutoUploadSetting()V

    return-void
.end method
