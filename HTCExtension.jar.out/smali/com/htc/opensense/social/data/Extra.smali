.class public Lcom/htc/opensense/social/data/Extra;
.super Ljava/lang/Object;
.source "Extra.java"


# instance fields
.field protected final extra:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public addExtra(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 350
    return-void
.end method

.method protected getExtra()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getExtraValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    return-void
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 61
    return-void
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 83
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 94
    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 105
    return-void
.end method

.method public putCharArray(Ljava/lang/String;[C)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 116
    return-void
.end method

.method public putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 138
    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 149
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 160
    return-void
.end method

.method public putFloatArray(Ljava/lang/String;[F)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 171
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 192
    return-void
.end method

.method public putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 203
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 213
    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 224
    return-void
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 235
    return-void
.end method

.method public putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 246
    return-void
.end method

.method public putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 255
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 256
    return-void
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 267
    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 278
    return-void
.end method

.method public putShortArray(Ljava/lang/String;[S)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 289
    return-void
.end method

.method public putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p2, value:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 301
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 331
    return-void
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/data/Extra;->addExtra(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method
