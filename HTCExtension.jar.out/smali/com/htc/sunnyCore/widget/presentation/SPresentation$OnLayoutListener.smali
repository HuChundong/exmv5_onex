.class public interface abstract Lcom/htc/sunnyCore/widget/presentation/SPresentation$OnLayoutListener;
.super Ljava/lang/Object;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/presentation/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLayoutListener"
.end annotation


# virtual methods
.method public abstract getContainerCount()I
.end method

.method public abstract getContainerLayout(I)Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;
.end method

.method public abstract updateLayoutAtTimeSlot(IIIILcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;Z)V
.end method
