.class public interface abstract Lcom/htc/sunny2/widget/gridview/interfaces/IEventPrototypeFactoryLayout;
.super Ljava/lang/Object;
.source "IEventPrototypeFactoryLayout.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototypeFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/sunny2/widget/gridview/interfaces/IItemPrototypeFactory",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_ROW_QUOTA_LAND:I = 0x4

.field public static final MAX_ROW_QUOTA_PORT:I = 0x2


# virtual methods
.method public abstract findColumnCount(I)I
.end method

.method public abstract findLargestItemPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
.end method

.method public abstract findLeastItemQuota()I
.end method

.method public abstract findMaxItemQuota()I
.end method

.method public abstract findMaxRowQuota(I)I
.end method

.method public abstract findRowCount(I)I
.end method

.method public abstract findRowFirstItemIndex(II)I
.end method

.method public abstract findSmallestItemPrototype()Lcom/htc/sunny2/widget/gridview/interfaces/IEventItemPrototype;
.end method

.method public abstract getLayoutHeight(I)I
.end method

.method public abstract getSeparableIndicator(I)J
.end method

.method public abstract isSeparable(I)Z
.end method

.method public abstract releaseLayoutResource()V
.end method
