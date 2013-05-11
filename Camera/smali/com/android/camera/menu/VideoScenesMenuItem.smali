.class public Lcom/android/camera/menu/VideoScenesMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "VideoScenesMenuItem.java"


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/menu/VideoScenesMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-void
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 2

    instance-of v1, p4, Lcom/android/camera/widget/VideoScenesPropertyItem;

    if-nez v1, :cond_0

    new-instance p4, Lcom/android/camera/widget/VideoScenesPropertyItem;

    iget-object v1, p0, Lcom/android/camera/menu/VideoScenesMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-direct {p4, v1}, Lcom/android/camera/widget/VideoScenesPropertyItem;-><init>(Landroid/content/Context;)V

    :cond_0
    move-object v0, p4

    check-cast v0, Lcom/android/camera/widget/VideoScenesPropertyItem;

    invoke-virtual {v0}, Lcom/android/camera/widget/VideoScenesPropertyItem;->initialize()V

    return-object v0
.end method

.method public isCustomView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
