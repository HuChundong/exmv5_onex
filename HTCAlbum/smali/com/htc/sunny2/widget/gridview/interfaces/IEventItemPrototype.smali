.class public interface abstract Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
.super Ljava/lang/Object;
.source "IEventItemPrototype.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototype;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototype",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final PROTOTYPE_CROP_VPOS:F = 0.5f

.field public static final PROTOTYPE_LARGE:I = 0x2

.field public static final PROTOTYPE_QUOTA_LARGE:I = 0x2

.field public static final PROTOTYPE_QUOTA_SEPARATOR:I = 0x4

.field public static final PROTOTYPE_QUOTA_SMALL:I = 0x1

.field public static final PROTOTYPE_QUOTA_UNKNOWN:I = 0x0

.field public static final PROTOTYPE_SEPARATOR:I = 0x3

.field public static final PROTOTYPE_SMALL:I = 0x1


# virtual methods
.method public abstract create()Lcom/htc/sunnyCore/ViewItem;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getRowQuota()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract release()V
.end method
