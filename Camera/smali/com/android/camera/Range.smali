.class public Lcom/android/camera/Range;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final maximum:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field public final minimum:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;TTValue;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/camera/Range;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/camera/Range;

    iget-object v2, p0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    shl-int/lit8 v2, v0, 0x10

    const v3, 0xffff

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
