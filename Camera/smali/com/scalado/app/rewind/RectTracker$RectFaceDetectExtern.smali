.class public interface abstract Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RectFaceDetectExtern"
.end annotation


# virtual methods
.method public abstract getBlinkValue(I)I
.end method

.method public abstract getFaceID(I)I
.end method

.method public abstract getFaceNum()I
.end method

.method public abstract getFaceRect(I)Landroid/graphics/Rect;
.end method

.method public abstract getLeftEyeRect(I)Landroid/graphics/Rect;
.end method

.method public abstract getMouthRect(I)Landroid/graphics/Rect;
.end method

.method public abstract getNoseRect(I)Landroid/graphics/Rect;
.end method

.method public abstract getRightEyeRect(I)Landroid/graphics/Rect;
.end method

.method public abstract getSmileValue(I)I
.end method

.method public abstract reset()V
.end method

.method public abstract setImagebuffer(Landroid/graphics/Bitmap;)V
.end method
