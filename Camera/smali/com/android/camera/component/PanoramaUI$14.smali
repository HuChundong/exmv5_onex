.class Lcom/android/camera/component/PanoramaUI$14;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaUI;->showCancelButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaUI$14;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/PanoramaUI$14;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_CancelButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/component/PanoramaUI;->access$100(Lcom/android/camera/component/PanoramaUI;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method
