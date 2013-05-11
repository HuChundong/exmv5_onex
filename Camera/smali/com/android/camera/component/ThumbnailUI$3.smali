.class Lcom/android/camera/component/ThumbnailUI$3;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$3;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$3;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #calls: Lcom/android/camera/component/ThumbnailUI;->onThumbnailButtonClicked()V
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$800(Lcom/android/camera/component/ThumbnailUI;)V

    return-void
.end method
