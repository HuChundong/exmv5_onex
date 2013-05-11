.class public interface abstract Lcom/htc/sunnyCore/view/SViewParent;
.super Ljava/lang/Object;
.source "SViewParent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract addView(Lcom/htc/sunnyCore/view/SView;)V
.end method

.method public abstract createContextMenu(Landroid/view/ContextMenu;)V
.end method

.method public abstract enableOverlapRoundCorner(ILandroid/graphics/Rect;)V
.end method

.method public abstract getGlobalBackgroundDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getRenderThread()Lcom/htc/sunnyCore/RenderThread;
.end method

.method public abstract getSpritePosition(Lcom/htc/sunnyCore/Sprite;)Lcom/htc/sunnyCore/view/Vector3F;
.end method

.method public abstract hasWindowFocus()Z
.end method

.method public abstract isBindedSurface()Z
.end method

.method public abstract performHapticFeedback(I)Z
.end method

.method public abstract performHapticFeedback(II)Z
.end method

.method public abstract playSoundEffect(I)V
.end method

.method public abstract removeView(Lcom/htc/sunnyCore/view/SView;)V
.end method

.method public abstract requestLayout()V
.end method

.method public abstract setGlobalBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setGlobalBackgroundResource(I)V
.end method

.method public abstract showContextMenuForChild(Lcom/htc/sunnyCore/view/SView;)Z
.end method
