.class public Lcom/htc/preference/HtcMultiCheckPreference;
.super Lcom/htc/preference/HtcDialogPreference;
.source "HtcMultiCheckPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcMultiCheckPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/String;

.field private mOrigValues:[Z

.field private mSetValues:[Z

.field private mSummary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcMultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    sget-object v1, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 52
    iget-object v1, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcMultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 55
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/preference/HtcMultiCheckPreference;->setEntryValuesCS([Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    sget-object v1, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSummary:Ljava/lang/String;

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/htc/preference/HtcMultiCheckPreference;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSetValues:[Z

    return-object v0
.end method

.method private setEntryValuesCS([Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 127
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcMultiCheckPreference;->setValues([Z)V

    .line 128
    if-eqz p1, :cond_0

    .line 129
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v0           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 223
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 225
    iget-object v1, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    .end local v0           #i:I
    :goto_1
    return v0

    .line 224
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 230
    .end local v0           #i:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSummary:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 184
    invoke-super {p0}, Lcom/htc/preference/HtcDialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public getValue(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSetValues:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getValues()[Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSetValues:[Z

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    const/4 v3, 0x0

    .line 254
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onDialogClosed(Z)V

    .line 256
    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/htc/preference/HtcMultiCheckPreference;->getValues()[Z

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcMultiCheckPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mOrigValues:[Z

    iget-object v1, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSetValues:[Z

    iget-object v2, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSetValues:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 266
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 237
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSetValues:[Z

    iget-object v1, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSetValues:[Z

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mOrigValues:[Z

    .line 243
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSetValues:[Z

    new-instance v2, Lcom/htc/preference/HtcMultiCheckPreference$1;

    invoke-direct {v2, p0}, Lcom/htc/preference/HtcMultiCheckPreference$1;-><init>(Lcom/htc/preference/HtcMultiCheckPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 250
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 288
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/preference/HtcMultiCheckPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 297
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 294
    check-cast v0, Lcom/htc/preference/HtcMultiCheckPreference$SavedState;

    .line 295
    .local v0, myState:Lcom/htc/preference/HtcMultiCheckPreference$SavedState;
    invoke-virtual {v0}, Lcom/htc/preference/HtcMultiCheckPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 296
    iget-object v1, v0, Lcom/htc/preference/HtcMultiCheckPreference$SavedState;->values:[Z

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcMultiCheckPreference;->setValues([Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 275
    invoke-super {p0}, Lcom/htc/preference/HtcDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 276
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/htc/preference/HtcMultiCheckPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 281
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/htc/preference/HtcMultiCheckPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcMultiCheckPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 282
    .local v0, myState:Lcom/htc/preference/HtcMultiCheckPreference$SavedState;
    invoke-virtual {p0}, Lcom/htc/preference/HtcMultiCheckPreference;->getValues()[Z

    move-result-object v2

    iput-object v2, v0, Lcom/htc/preference/HtcMultiCheckPreference$SavedState;->values:[Z

    move-object v1, v0

    .line 283
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 271
    return-void
.end method

.method public setEntries(I)V
    .locals 1
    .parameter "entriesResId"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/htc/preference/HtcMultiCheckPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcMultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "entries"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 84
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSetValues:[Z

    .line 85
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mOrigValues:[Z

    .line 86
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .parameter "entryValuesResId"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/htc/preference/HtcMultiCheckPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/preference/HtcMultiCheckPreference;->setEntryValuesCS([Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method

.method public setEntryValues([Ljava/lang/String;)V
    .locals 2
    .parameter "entryValues"

    .prologue
    const/4 v1, 0x0

    .line 113
    iput-object p1, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSetValues:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 115
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mOrigValues:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 116
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSummary:Ljava/lang/String;

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(IZ)V
    .locals 1
    .parameter "index"
    .parameter "state"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSetValues:[Z

    aput-boolean p2, v0, p1

    .line 157
    return-void
.end method

.method public setValues([Z)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 163
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSetValues:[Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSetValues:[Z

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 165
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mOrigValues:[Z

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 166
    if-eqz p1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSetValues:[Z

    array-length v0, p1

    iget-object v2, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSetValues:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    array-length v0, p1

    :goto_0
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    :cond_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcMultiCheckPreference;->mSetValues:[Z

    array-length v0, v0

    goto :goto_0
.end method
