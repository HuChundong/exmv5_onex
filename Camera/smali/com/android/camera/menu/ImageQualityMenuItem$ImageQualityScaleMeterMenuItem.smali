.class Lcom/android/camera/menu/ImageQualityMenuItem$ImageQualityScaleMeterMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "ImageQualityMenuItem.java"

# interfaces
.implements Lcom/android/camera/widget/ScaleMeterItem$OnButtonClickedListener;
.implements Lcom/android/camera/widget/ScaleMeterItem$OnLevelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/menu/ImageQualityMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageQualityScaleMeterMenuItem"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageQualityScaleMeterMenuItem"


# instance fields
.field private m_ScaleMeterItem:Lcom/android/camera/widget/ImageQualityScaleMeterItem;

.field final synthetic this$0:Lcom/android/camera/menu/ImageQualityMenuItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/menu/ImageQualityMenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/menu/ImageQualityMenuItem$ImageQualityScaleMeterMenuItem;->this$0:Lcom/android/camera/menu/ImageQualityMenuItem;

    invoke-direct {p0}, Lcom/android/camera/menu/MenuItem;-><init>()V

    return-void
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 2

    instance-of v0, p4, Lcom/android/camera/widget/ImageQualityScaleMeterItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/widget/ImageQualityScaleMeterItem;

    iget-object v1, p0, Lcom/android/camera/menu/ImageQualityMenuItem$ImageQualityScaleMeterMenuItem;->this$0:Lcom/android/camera/menu/ImageQualityMenuItem;

    #getter for: Lcom/android/camera/menu/ImageQualityMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/menu/ImageQualityMenuItem;->access$000(Lcom/android/camera/menu/ImageQualityMenuItem;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/widget/ImageQualityScaleMeterItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/menu/ImageQualityMenuItem$ImageQualityScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/android/camera/widget/ImageQualityScaleMeterItem;

    :goto_0
    const-string v0, "ImageQualityScaleMeterMenuItem"

    const-string v1, "initialize() - getView : initialize"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/menu/ImageQualityMenuItem$ImageQualityScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/android/camera/widget/ImageQualityScaleMeterItem;

    invoke-virtual {v0, p0}, Lcom/android/camera/widget/ImageQualityScaleMeterItem;->setOnButtonClickedListener(Lcom/android/camera/widget/ScaleMeterItem$OnButtonClickedListener;)V

    iget-object v0, p0, Lcom/android/camera/menu/ImageQualityMenuItem$ImageQualityScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/android/camera/widget/ImageQualityScaleMeterItem;

    invoke-virtual {v0, p0}, Lcom/android/camera/widget/ImageQualityScaleMeterItem;->setOnLevelChangedListener(Lcom/android/camera/widget/ScaleMeterItem$OnLevelChangedListener;)V

    iget-object v0, p0, Lcom/android/camera/menu/ImageQualityMenuItem$ImageQualityScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/android/camera/widget/ImageQualityScaleMeterItem;

    return-object v0

    :cond_0
    check-cast p4, Lcom/android/camera/widget/ImageQualityScaleMeterItem;

    iput-object p4, p0, Lcom/android/camera/menu/ImageQualityMenuItem$ImageQualityScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/android/camera/widget/ImageQualityScaleMeterItem;

    iget-object v0, p0, Lcom/android/camera/menu/ImageQualityMenuItem$ImageQualityScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/android/camera/widget/ImageQualityScaleMeterItem;

    invoke-virtual {v0}, Lcom/android/camera/widget/ImageQualityScaleMeterItem;->refreshLevel()V

    goto :goto_0
.end method

.method public isCustomView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onButtonClicked(Lcom/android/camera/widget/ScaleMeterItem;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/ImageQualityMenuItem$ImageQualityScaleMeterMenuItem;->this$0:Lcom/android/camera/menu/ImageQualityMenuItem;

    invoke-virtual {v0}, Lcom/android/camera/menu/ImageQualityMenuItem;->notifyItemContentClicked()V

    return-void
.end method

.method public onLevelChanged(Lcom/android/camera/widget/ScaleMeterItem;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/ImageQualityMenuItem$ImageQualityScaleMeterMenuItem;->this$0:Lcom/android/camera/menu/ImageQualityMenuItem;

    invoke-virtual {v0}, Lcom/android/camera/menu/ImageQualityMenuItem;->updateContent()V

    return-void
.end method
