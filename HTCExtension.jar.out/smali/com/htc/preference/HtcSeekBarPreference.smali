.class public Lcom/htc/preference/HtcSeekBarPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcSeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private cpb:Landroid/graphics/drawable/Drawable;

.field private cpe:Landroid/graphics/drawable/Drawable;

.field private cpf:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    sget-object v3, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, a:Landroid/content/res/TypedArray;
    iget v3, p0, Lcom/htc/preference/HtcSeekBarPreference;->mMax:I

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcSeekBarPreference;->setMax(I)V

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    sget-object v3, Lcom/htc/R$styleable;->HtcPreferenceSeekBar:[I

    const v4, 0x2010042

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 59
    .local v2, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 60
    .local v1, ld:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcSeekBarPreference;->cpe:Landroid/graphics/drawable/Drawable;

    .line 61
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcSeekBarPreference;->cpf:Landroid/graphics/drawable/Drawable;

    .line 62
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcSeekBarPreference;->cpb:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    const v3, 0x2090075

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcSeekBarPreference;->setLayoutResource(I)V

    .line 65
    return-void
.end method

.method private getProgressDrawable(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "seekBar"

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 94
    .local v0, layer:Landroid/graphics/drawable/LayerDrawable;
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    iget-object v2, p0, Lcom/htc/preference/HtcSeekBarPreference;->cpf:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 95
    .local v1, progress:Landroid/graphics/drawable/ClipDrawable;
    const/high16 v2, 0x102

    iget-object v3, p0, Lcom/htc/preference/HtcSeekBarPreference;->cpe:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 96
    const v2, 0x102000d

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 97
    return-object v0
.end method

.method private getProgressThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/preference/HtcSeekBarPreference;->cpb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private setProgress(IZ)V
    .locals 1
    .parameter "progress"
    .parameter "notifyChanged"

    .prologue
    .line 169
    iget v0, p0, Lcom/htc/preference/HtcSeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 170
    iget p1, p0, Lcom/htc/preference/HtcSeekBarPreference;->mMax:I

    .line 172
    :cond_0
    if-gez p1, :cond_1

    .line 173
    const/4 p1, 0x0

    .line 175
    :cond_1
    iget v0, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 176
    iput p1, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    .line 177
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcSeekBarPreference;->persistInt(I)Z

    .line 178
    if-eqz p2, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->notifyChanged()V

    .line 182
    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 78
    const v2, 0x2020107

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 81
    .local v1, seekBar:Landroid/widget/SeekBar;
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 82
    .local v0, margin_m:I
    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 83
    invoke-direct {p0, v1}, Lcom/htc/preference/HtcSeekBarPreference;->getProgressDrawable(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-direct {p0}, Lcom/htc/preference/HtcSeekBarPreference;->getProgressThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 86
    iget v2, p0, Lcom/htc/preference/HtcSeekBarPreference;->mMax:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 87
    iget v2, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 88
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 90
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 135
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 136
    const/16 v1, 0x51

    if-eq p2, v1, :cond_0

    const/16 v1, 0x46

    if-ne p2, v1, :cond_1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSeekBarPreference;->setProgress(I)V

    .line 146
    :goto_0
    return v0

    .line 141
    :cond_1
    const/16 v1, 0x45

    if-ne p2, v1, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 146
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 214
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/htc/preference/HtcSeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcSeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 217
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 263
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/preference/HtcSeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 275
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 270
    check-cast v0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;

    .line 271
    .local v0, myState:Lcom/htc/preference/HtcSeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcom/htc/preference/HtcSeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 272
    iget v1, v0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    .line 273
    iget v1, v0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/htc/preference/HtcSeekBarPreference;->mMax:I

    .line 274
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 244
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 245
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 251
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcSeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 252
    .local v0, myState:Lcom/htc/preference/HtcSeekBarPreference$SavedState;
    iget v2, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    iput v2, v0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;->progress:I

    .line 253
    iget v2, p0, Lcom/htc/preference/HtcSeekBarPreference;->mMax:I

    iput v2, v0, Lcom/htc/preference/HtcSeekBarPreference$SavedState;->max:I

    move-object v1, v0

    .line 254
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 116
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcSeekBarPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcSeekBarPreference;->setProgress(I)V

    .line 118
    return-void

    .line 116
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcSeekBarPreference;->mTrackingTouch:Z

    .line 222
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/preference/HtcSeekBarPreference;->mTrackingTouch:Z

    .line 227
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 228
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcSeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 230
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 154
    iget v0, p0, Lcom/htc/preference/HtcSeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 155
    iput p1, p0, Lcom/htc/preference/HtcSeekBarPreference;->mMax:I

    .line 156
    invoke-virtual {p0}, Lcom/htc/preference/HtcSeekBarPreference;->notifyChanged()V

    .line 158
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcSeekBarPreference;->setProgress(IZ)V

    .line 166
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 198
    .local v0, progress:I
    iget v1, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/preference/HtcSeekBarPreference;->setProgress(IZ)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget v1, p0, Lcom/htc/preference/HtcSeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
