.class public Lcom/htc/album/helper/AnimationHelper$ThumbnailView;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/AnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/AnimationHelper$ThumbnailView$ThumbnailViewItem;
    }
.end annotation


# static fields
.field public static final DURATION:I = 0x258

.field public static final KEY_ITEM_CLICKED_INDEX:Ljava/lang/String; = "thumb_animation_click_index"

.field public static final KEY_ITEM_CLICKED_POSITION:Ljava/lang/String; = "thumb_animation_click_pos"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    return-void
.end method
