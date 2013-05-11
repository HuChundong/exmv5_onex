.class public Lcom/htc/preference/HtcPreference;
.super Ljava/lang/Object;
.source "HtcPreference.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/htc/preference/HtcOnDependencyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcPreference$BaseSavedState;,
        Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;,
        Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;,
        Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;,
        Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/preference/HtcPreference;",
        ">;",
        "Lcom/htc/preference/HtcOnDependencyChangeListener;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mBaseMethodCalled:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasBoundView:Z

.field private mHasSpecifiedLayout:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIconVisibility:Z

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

.field private mNeedModifyLayout:Z

.field private mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

.field private mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

.field private mOrder:I

.field private mPersistent:Z

.field private mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private mWidgetLayoutResId:I

.field private margin_m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 457
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 458
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 449
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v7, 0x209006a

    const v6, 0x1010091

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean v4, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    .line 138
    iput-boolean v4, p0, Lcom/htc/preference/HtcPreference;->mHasBoundView:Z

    .line 140
    const v3, 0x7fffffff

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    .line 153
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    .line 154
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    .line 156
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    .line 159
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mDependencyMet:Z

    .line 164
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    .line 166
    iput v7, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    .line 168
    iput-boolean v4, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    .line 169
    iput-boolean v4, p0, Lcom/htc/preference/HtcPreference;->mNeedModifyLayout:Z

    .line 275
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    .line 277
    sget-object v3, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 279
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    :cond_0
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    .line 285
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 287
    const v3, 0x101008f

    if-eq p3, v3, :cond_2

    if-ne p3, v6, :cond_3

    .line 290
    :cond_2
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mNeedModifyLayout:Z

    .line 293
    :cond_3
    sget-object v3, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_4

    .line 296
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 297
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 295
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 299
    :pswitch_0
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mIconResId:I

    goto :goto_1

    .line 303
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    goto :goto_1

    .line 307
    :pswitch_2
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mTitleRes:I

    .line 308
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 312
    :pswitch_3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 316
    :pswitch_4
    iget v3, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    goto :goto_1

    .line 320
    :pswitch_5
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mFragment:Ljava/lang/String;

    goto :goto_1

    .line 325
    :pswitch_6
    iget v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 343
    iget v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    goto :goto_1

    .line 329
    :sswitch_0
    iput v7, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    goto :goto_1

    .line 333
    :sswitch_1
    const v3, 0x209006c

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    goto :goto_1

    .line 336
    :sswitch_2
    const v3, 0x209006f

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    goto :goto_1

    .line 340
    :sswitch_3
    const v3, 0x209006d

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    goto :goto_1

    .line 348
    :pswitch_7
    iget v3, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    .line 349
    iget v3, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    packed-switch v3, :pswitch_data_1

    .line 357
    :pswitch_8
    iget v3, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    goto :goto_1

    .line 351
    :pswitch_9
    const v3, 0x2090076

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    goto :goto_1

    .line 354
    :pswitch_a
    const v3, 0x2090074

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    goto :goto_1

    .line 362
    :pswitch_b
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    goto/16 :goto_1

    .line 366
    :pswitch_c
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    goto/16 :goto_1

    .line 370
    :pswitch_d
    iget-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    goto/16 :goto_1

    .line 374
    :pswitch_e
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 378
    :pswitch_f
    invoke-virtual {p0, v0, v1}, Lcom/htc/preference/HtcPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mDefaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 382
    :pswitch_10
    iget-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    goto/16 :goto_1

    .line 386
    .end local v1           #attr:I
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 388
    if-ne p3, v6, :cond_5

    .line 389
    const v3, 0x209006e

    iput v3, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    .line 391
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.preference"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 393
    iput-boolean v5, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    .line 395
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;->applyExtendedAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 396
    return-void

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_d
        :pswitch_b
        :pswitch_6
        :pswitch_2
        :pswitch_c
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_5
    .end packed-switch

    .line 325
    :sswitch_data_0
    .sparse-switch
        0x1090002 -> :sswitch_1
        0x109007e -> :sswitch_0
        0x109007f -> :sswitch_1
        0x1090080 -> :sswitch_3
        0x1090081 -> :sswitch_3
        0x1090082 -> :sswitch_2
        0x1090084 -> :sswitch_0
        0x1090086 -> :sswitch_0
    .end sparse-switch

    .line 349
    :pswitch_data_1
    .packed-switch 0x109008a
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private applyExtendedAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 411
    new-array v3, v6, [I

    const v4, 0x1010002

    aput v4, v3, v5

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 415
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 418
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 421
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 415
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 423
    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 424
    iput-boolean v6, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    goto :goto_1

    .line 429
    .end local v1           #attr:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 430
    return-void

    .line 421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    .line 1833
    .local v0, shouldPersist:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1834
    :cond_0
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1835
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/htc/preference/HtcPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1840
    :cond_1
    :goto_0
    return-void

    .line 1838
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/preference/HtcPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerDependency()V
    .locals 4

    .prologue
    .line 1663
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1672
    :goto_0
    return-void

    .line 1665
    :cond_0
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 1666
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_1

    .line 1667
    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreference;->registerDependent(Lcom/htc/preference/HtcPreference;)V

    goto :goto_0

    .line 1669
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Lcom/htc/preference/HtcPreference;)V
    .locals 1
    .parameter "dependent"

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1717
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/htc/preference/HtcPreference;->onDependencyChanged(Lcom/htc/preference/HtcPreference;Z)V

    .line 1718
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "enabled"

    .prologue
    .line 1005
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 1007
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 1008
    check-cast v1, Landroid/view/ViewGroup;

    .line 1009
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1010
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/htc/preference/HtcPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 1009
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1013
    .end local v0           #i:I
    .end local v1           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private syncIconDrawable()Z
    .locals 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 931
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private syncIconVisibility()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 945
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 946
    iget-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    if-eqz v1, :cond_1

    .line 947
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 951
    :goto_0
    const/4 v0, 0x1

    .line 953
    :cond_0
    return v0

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter "editor"

    .prologue
    .line 1863
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceManager;->shouldCommit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1865
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1873
    :cond_0
    :goto_0
    return-void

    .line 1866
    :catch_0
    move-exception v0

    .line 1870
    .local v0, unused:Ljava/lang/AbstractMethodError;
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private unregisterDependency()V
    .locals 2

    .prologue
    .line 1675
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1676
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 1677
    .local v0, oldDependency:Lcom/htc/preference/HtcPreference;
    if-eqz v0, :cond_0

    .line 1678
    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreference;->unregisterDependent(Lcom/htc/preference/HtcPreference;)V

    .line 1681
    .end local v0           #oldDependency:Lcom/htc/preference/HtcPreference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Lcom/htc/preference/HtcPreference;)V
    .locals 1
    .parameter "dependent"

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1732
    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .parameter "newValue"

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public compareTo(Lcom/htc/preference/HtcPreference;)I
    .locals 2
    .parameter "another"

    .prologue
    const v1, 0x7fffffff

    .line 1582
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/htc/preference/HtcPreference;->mOrder:I

    if-eq v0, v1, :cond_1

    .line 1585
    :cond_0
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    iget v1, p1, Lcom/htc/preference/HtcPreference;->mOrder:I

    sub-int/2addr v0, v1

    .line 1592
    :goto_0
    return v0

    .line 1586
    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1587
    const/4 v0, 0x1

    goto :goto_0

    .line 1588
    :cond_2
    iget-object v0, p1, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1589
    const/4 v0, -0x1

    goto :goto_0

    .line 1592
    :cond_3
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    check-cast p1, Lcom/htc/preference/HtcPreference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->compareTo(Lcom/htc/preference/HtcPreference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 2299
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2300
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 2301
    .local v0, state:Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 2302
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    .line 2303
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2304
    iget-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 2305
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2310
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 2238
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2239
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    .line 2240
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2241
    .local v0, state:Landroid/os/Parcelable;
    iget-boolean v1, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 2242
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2245
    :cond_0
    if-eqz v0, :cond_1

    .line 2246
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2249
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "key"

    .prologue
    .line 1694
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_1

    .line 1695
    :cond_0
    const/4 v0, 0x0

    .line 1698
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 864
    const/4 v0, 0x0

    .line 866
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    .line 1548
    const/4 v0, 0x0

    .line 1551
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreference;->mExtras:Landroid/os/Bundle;

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 2195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2196
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2197
    .local v2, title:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2198
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2200
    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2201
    .local v1, summary:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2204
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 2206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2208
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIconVisibility()Z
    .locals 1

    .prologue
    .line 898
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    return v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 1253
    iget-wide v0, p0, Lcom/htc/preference/HtcPreference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOnPreferenceFirstBindViewListener()Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 2167
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2171
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedFloat(F)F
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 2071
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2075
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedInt(I)I
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 2019
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2023
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedLong(J)J
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 2123
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2127
    .end local p1
    :goto_0
    return-wide p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1922
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1973
    .local p1, defaultReturnValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1977
    .end local p1           #defaultReturnValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .restart local p1       #defaultReturnValue:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0
.end method

.method public getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;
    .locals 1

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    .line 1517
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Preference Manager equal to null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1520
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .prologue
    .line 1243
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mSummaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 1083
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mTitleRes:I

    return v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 619
    if-nez p1, :cond_0

    .line 620
    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 622
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 623
    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasSpecifiedLayout()Z
    .locals 1

    .prologue
    .line 2175
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1189
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 1324
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 1214
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;->onPreferenceChange(Lcom/htc/preference/HtcPreference;)V

    .line 1613
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .parameter "disableDependents"

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mDependents:Ljava/util/List;

    .line 1744
    .local v0, dependents:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
    if-nez v0, :cond_1

    .line 1752
    :cond_0
    return-void

    .line 1748
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1749
    .local v1, dependentsCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1750
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, p0, p1}, Lcom/htc/preference/HtcPreference;->onDependencyChanged(Lcom/htc/preference/HtcPreference;Z)V

    .line 1749
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Lcom/htc/preference/HtcPreference;)V

    .line 1624
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    .prologue
    .line 1658
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->registerDependency()V

    .line 1659
    return-void
.end method

.method protected onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V
    .locals 2
    .parameter "preferenceManager"

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    .line 1644
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/preference/HtcPreference;->mId:J

    .line 1646
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->dispatchSetInitialValue()V

    .line 1647
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const v11, 0x1020006

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 779
    const v9, 0x1020016

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 781
    .local v6, titleView:Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 782
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 783
    .local v5, title:Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 784
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 790
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    const v9, 0x1020010

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 792
    .local v4, summaryView:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 793
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    .line 794
    .local v3, summary:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 795
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 802
    .end local v3           #summary:Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 803
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_5

    .line 804
    iget v9, p0, Lcom/htc/preference/HtcPreference;->mIconResId:I

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    .line 805
    :cond_2
    iget-object v9, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_3

    .line 806
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/htc/preference/HtcPreference;->mIconResId:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 812
    :cond_3
    iget-object v9, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 816
    :cond_5
    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    .line 818
    iget-object v7, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    if-eqz v7, :cond_7

    .line 820
    iget-object v7, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 822
    .local v2, param:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x20500e6

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 823
    .local v0, iconSize:I
    iget-object v7, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    .line 824
    iget-object v7, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    if-le v7, v0, :cond_6

    .line 825
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 826
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 829
    :cond_6
    iget v7, p0, Lcom/htc/preference/HtcPreference;->margin_m:I

    invoke-virtual {v2, v8, v8, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 830
    iget-object v7, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    iget-object v7, p0, Lcom/htc/preference/HtcPreference;->mIconView:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 834
    .end local v0           #iconSize:I
    .end local v2           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_7
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->syncIconVisibility()Z

    .line 835
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->syncIconDrawable()Z

    .line 837
    iget-boolean v7, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    if-eqz v7, :cond_8

    .line 838
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v7

    invoke-direct {p0, p1, v7}, Lcom/htc/preference/HtcPreference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 842
    :cond_8
    iget-boolean v7, p0, Lcom/htc/preference/HtcPreference;->mHasBoundView:Z

    if-nez v7, :cond_9

    .line 843
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/preference/HtcPreference;->mHasBoundView:Z

    .line 844
    iget-object v7, p0, Lcom/htc/preference/HtcPreference;->mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

    if-eqz v7, :cond_9

    .line 845
    iget-object v7, p0, Lcom/htc/preference/HtcPreference;->mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

    invoke-interface {v7, p0}, Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;->onPreferenceFirstBindView(Lcom/htc/preference/HtcPreference;)V

    .line 848
    :cond_9
    return-void

    .line 787
    .end local v1           #imageView:Landroid/widget/ImageView;
    .end local v4           #summaryView:Landroid/widget/TextView;
    .restart local v5       #title:Ljava/lang/CharSequence;
    :cond_a
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 798
    .end local v5           #title:Ljava/lang/CharSequence;
    .restart local v3       #summary:Ljava/lang/CharSequence;
    .restart local v4       #summaryView:Landroid/widget/TextView;
    :cond_b
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 1263
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .parameter "parent"

    .prologue
    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "layout_inflater"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 643
    .local v7, layoutInflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 644
    .local v6, layout:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x2050001

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/preference/HtcPreference;->margin_m:I

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x2050003

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 646
    .local v8, margin_xs:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x205000c

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 647
    .local v13, spacing:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    move/from16 v22, v0

    const v23, 0x209006c

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "section_divider_top"

    const v25, 0x2080099

    invoke-static/range {v23 .. v25}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 650
    .local v4, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 652
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->margin_m:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->margin_m:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    move-object/from16 v22, v6

    .line 653
    check-cast v22, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x2030047

    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    move-object/from16 v22, v6

    .line 654
    check-cast v22, Landroid/widget/TextView;

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setAllCaps(Z)V

    move-object/from16 v22, v6

    .line 655
    check-cast v22, Landroid/widget/TextView;

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setFocusable(Z)V

    move-object/from16 v22, v6

    .line 656
    check-cast v22, Landroid/widget/TextView;

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setClickable(Z)V

    move-object/from16 v22, v6

    .line 657
    check-cast v22, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x205010a

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 660
    .end local v4           #bg:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    move/from16 v22, v0

    const v23, 0x209006a

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "common_list_item_background"

    const v25, 0x208003b

    invoke-static/range {v23 .. v25}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 663
    .restart local v4       #bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 665
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->margin_m:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->margin_m:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v13, v1, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 666
    const v22, 0x1020016

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 667
    .local v17, title:Landroid/widget/TextView;
    const v22, 0x1020010

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 668
    .local v14, summary:Landroid/widget/TextView;
    if-eqz v17, :cond_1

    if-eqz v14, :cond_1

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v22

    const v23, 0x2030038

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 670
    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v22

    const v23, 0x2030042

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 672
    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 675
    .end local v4           #bg:Landroid/graphics/drawable/Drawable;
    .end local v14           #summary:Landroid/widget/TextView;
    .end local v17           #title:Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    move/from16 v22, v0

    const v23, 0x2090075

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "common_list_item_background"

    const v25, 0x208003b

    invoke-static/range {v23 .. v25}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 679
    .restart local v4       #bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 680
    const v22, 0x2020107

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/SeekBar;

    .line 682
    .local v11, seekBar:Landroid/widget/SeekBar;
    invoke-virtual {v11}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 683
    .local v12, seekBarParent:Landroid/widget/RelativeLayout;
    if-eqz v12, :cond_2

    .line 685
    const v22, 0x1020016

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 686
    .restart local v17       #title:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v22

    const v23, 0x2030038

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 687
    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 688
    const/16 v22, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 690
    .local v10, param:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->margin_m:I

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 691
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 692
    const v22, 0x1020010

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 693
    .restart local v14       #summary:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v22

    const v23, 0x2030042

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 694
    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 696
    .end local v10           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14           #summary:Landroid/widget/TextView;
    .end local v17           #title:Landroid/widget/TextView;
    :cond_2
    const v22, 0x1020018

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 697
    .local v20, widget_frame:Landroid/widget/LinearLayout;
    if-eqz v20, :cond_3

    .line 699
    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 700
    .restart local v10       #param:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->margin_m:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->margin_m:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 701
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    .end local v4           #bg:Landroid/graphics/drawable/Drawable;
    .end local v10           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11           #seekBar:Landroid/widget/SeekBar;
    .end local v12           #seekBarParent:Landroid/widget/RelativeLayout;
    .end local v20           #widget_frame:Landroid/widget/LinearLayout;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 707
    const v22, 0x1020018

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    .line 709
    .local v19, widgetFrame:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 712
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/preference/HtcPreference;->mNeedModifyLayout:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    if-eqz v22, :cond_4

    .line 713
    const v22, 0x1020001

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_6

    .line 714
    const v22, 0x1020001

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 715
    .local v5, checkboxView:Landroid/view/View;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v21

    .line 717
    .local v21, x:I
    new-instance v9, Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Lcom/htc/widget/HtcCheckBox;-><init>(Landroid/content/Context;)V

    .line 718
    .local v9, newCheckbox:Lcom/htc/widget/HtcCheckBox;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcCheckBox;->setId(I)V

    .line 720
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 721
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 722
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x1

    invoke-direct/range {v22 .. v24}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    const v22, 0x1020001

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/htc/widget/HtcCheckBox;

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 724
    const v22, 0x1020001

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/htc/widget/HtcCheckBox;

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcCheckBox;->setFocusable(Z)V

    .line 725
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 726
    .restart local v10       #param:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->margin_m:I

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 727
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    .end local v5           #checkboxView:Landroid/view/View;
    .end local v9           #newCheckbox:Lcom/htc/widget/HtcCheckBox;
    .end local v10           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v19           #widgetFrame:Landroid/view/ViewGroup;
    .end local v21           #x:I
    :cond_4
    :goto_0
    const v22, 0x202013e

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Switch;

    .line 738
    .local v16, switchwidget:Landroid/widget/Switch;
    if-eqz v16, :cond_5

    .line 740
    const-string v22, "HTCPreference"

    const-string v23, "switchwidget!=null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v18, Lcom/htc/widget/HtcToggleButtonLight;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;)V

    .line 742
    .local v18, toggleButton:Lcom/htc/widget/HtcToggleButtonLight;
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setClickable(Z)V

    .line 743
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setFocusable(Z)V

    .line 744
    const v22, 0x202013e

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setId(I)V

    .line 752
    const/16 v22, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 753
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v21

    .line 754
    .restart local v21       #x:I
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 756
    .local v15, switchParent:Landroid/view/ViewGroup;
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 757
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 760
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/preference/HtcPreference;->margin_m:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v13, v1, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 764
    .end local v15           #switchParent:Landroid/view/ViewGroup;
    .end local v18           #toggleButton:Lcom/htc/widget/HtcToggleButtonLight;
    .end local v21           #x:I
    :cond_5
    return-object v6

    .line 729
    .end local v16           #switchwidget:Landroid/widget/Switch;
    .restart local v19       #widgetFrame:Landroid/view/ViewGroup;
    :cond_6
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto/16 :goto_0
.end method

.method public onDependencyChanged(Lcom/htc/preference/HtcPreference;Z)V
    .locals 1
    .parameter "dependency"
    .parameter "disableDependent"

    .prologue
    .line 1765
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1766
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mDependencyMet:Z

    .line 1769
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    .line 1771
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1773
    :cond_0
    return-void

    .line 1766
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 474
    const/4 v0, 0x0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1483
    const/4 v0, 0x0

    return v0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 1816
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->unregisterDependency()V

    .line 1817
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    .line 2328
    sget-object v0, Lcom/htc/preference/HtcPreference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 2329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2331
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 2268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mBaseMethodCalled:Z

    .line 2269
    sget-object v0, Lcom/htc/preference/HtcPreference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .parameter "restorePersistedValue"
    .parameter "defaultValue"

    .prologue
    .line 1860
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method performClick(Lcom/htc/preference/HtcPreferenceScreen;)V
    .locals 4
    .parameter "preferenceScreen"

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1473
    :cond_0
    :goto_0
    return-void

    .line 1453
    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->onClick()V

    .line 1455
    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;->onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1459
    :cond_2
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    .line 1460
    .local v2, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    if-eqz v2, :cond_3

    .line 1461
    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getOnPreferenceTreeClickListener()Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1463
    .local v1, listener:Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;
    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1, p1, p0}, Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1469
    .end local v1           #listener:Lcom/htc/preference/HtcPreferenceManager$OnPreferenceTreeClickListener;
    :cond_3
    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1470
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1471
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2141
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2142
    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreference;->getPersistedBoolean(Z)Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 2152
    :goto_0
    return v2

    .line 2147
    :cond_1
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2148
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2149
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    move v2, v1

    .line 2152
    goto :goto_0
.end method

.method protected persistFloat(F)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 2041
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2042
    const/high16 v2, 0x7fc0

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->getPersistedFloat(F)F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 2052
    :goto_0
    return v1

    .line 2047
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2048
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 2049
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 2052
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistInt(I)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 1992
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1993
    xor-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->getPersistedInt(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 2003
    :goto_0
    return v1

    .line 1998
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1999
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2000
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 2003
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistLong(J)Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 2093
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2094
    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/htc/preference/HtcPreference;->getPersistedLong(J)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 2104
    :goto_0
    return v1

    .line 2099
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2100
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2101
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 2104
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 1889
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1891
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 1901
    :goto_0
    return v1

    .line 1896
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1897
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1898
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1901
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1941
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1943
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1953
    :goto_0
    return v1

    .line 1948
    :cond_0
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1949
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1950
    invoke-direct {p0, v0}, Lcom/htc/preference/HtcPreference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1953
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method requireKey()V
    .locals 2

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1298
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1301
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mRequiresKey:Z

    .line 1302
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 2285
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2286
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 2224
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 2225
    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 878
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 879
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    .line 883
    :goto_0
    return-void

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "defaultValue"

    .prologue
    .line 1827
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mDefaultValue:Ljava/lang/Object;

    .line 1828
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .parameter "dependencyKey"

    .prologue
    .line 1793
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->unregisterDependency()V

    .line 1796
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mDependencyKey:Ljava/lang/String;

    .line 1797
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->registerDependency()V

    .line 1798
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1173
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1174
    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mEnabled:Z

    .line 1177
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->notifyDependencyChange(Z)V

    .line 1179
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1181
    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mFragment:Ljava/lang/String;

    .line 503
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "iconResId"

    .prologue
    .line 1120
    iput p1, p0, Lcom/htc/preference/HtcPreference;->mIconResId:I

    .line 1121
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1122
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 1105
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 1106
    :cond_1
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    .line 1108
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->syncIconDrawable()Z

    .line 1109
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1111
    :cond_2
    return-void
.end method

.method public setIconVisibility(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 910
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    if-eq v0, p1, :cond_0

    .line 911
    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mIconVisibility:Z

    .line 912
    invoke-direct {p0}, Lcom/htc/preference/HtcPreference;->syncIconVisibility()Z

    .line 913
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 915
    :cond_0
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mIntent:Landroid/content/Intent;

    .line 485
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mKey:Ljava/lang/String;

    .line 1274
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->requireKey()V

    .line 1277
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 1
    .parameter "layoutResId"

    .prologue
    .line 553
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    .line 558
    :cond_0
    iput p1, p0, Lcom/htc/preference/HtcPreference;->mLayoutResId:I

    .line 559
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;

    .line 1604
    return-void
.end method

.method public setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V
    .locals 0
    .parameter "onPreferenceChangeListener"

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mOnChangeListener:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    .line 1402
    return-void
.end method

.method public setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V
    .locals 0
    .parameter "onPreferenceClickListener"

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mOnClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    .line 1425
    return-void
.end method

.method public setOnPreferenceFirstBindViewListener(Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1376
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mOnFirstBindViewListener:Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;

    .line 1377
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .parameter "order"

    .prologue
    .line 1029
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 1030
    iput p1, p0, Lcom/htc/preference/HtcPreference;->mOrder:I

    .line 1033
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyHierarchyChanged()V

    .line 1035
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .parameter "persistent"

    .prologue
    .line 1352
    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mPersistent:Z

    .line 1353
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .parameter "selectable"

    .prologue
    .line 1198
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 1199
    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mSelectable:Z

    .line 1200
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1202
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .parameter "shouldDisableView"

    .prologue
    .line 1229
    iput-boolean p1, p0, Lcom/htc/preference/HtcPreference;->mShouldDisableView:Z

    .line 1230
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1231
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1164
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 1150
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1151
    :cond_1
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mSummary:Ljava/lang/CharSequence;

    .line 1152
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1154
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleResId"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1072
    iput p1, p0, Lcom/htc/preference/HtcPreference;->mTitleRes:I

    .line 1073
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 1057
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1058
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/preference/HtcPreference;->mTitleRes:I

    .line 1059
    iput-object p1, p0, Lcom/htc/preference/HtcPreference;->mTitle:Ljava/lang/CharSequence;

    .line 1060
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 1062
    :cond_2
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1
    .parameter "widgetLayoutResId"

    .prologue
    .line 585
    iget v0, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreference;->mHasSpecifiedLayout:Z

    .line 589
    :cond_0
    iput p1, p0, Lcom/htc/preference/HtcPreference;->mWidgetLayoutResId:I

    .line 590
    return-void
.end method

.method public shouldCommit()Z
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-nez v0, :cond_0

    .line 1568
    const/4 v0, 0x0

    .line 1571
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceManager;->shouldCommit()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 1782
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/htc/preference/HtcPreference;->mPreferenceManager:Lcom/htc/preference/HtcPreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2180
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
