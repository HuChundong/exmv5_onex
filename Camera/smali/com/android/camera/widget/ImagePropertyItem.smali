.class public Lcom/android/camera/widget/ImagePropertyItem;
.super Landroid/widget/LinearLayout;
.source "ImagePropertyItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;,
        Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;
    }
.end annotation


# static fields
.field public static final PROPERTY_LEVEL_NUMBER_MAX:I = 0x8

.field public static final PROPERTY_LEVEL_NUMBER_MIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImagePropertyItem"

.field public static final VALUE_BRIGHTNESS:I = 0x0

.field public static final VALUE_CONTRAST:I = 0x1

.field public static final VALUE_SATURATION:I = 0x2

.field public static final VALUE_SHARPNESS:I = 0x3


# instance fields
.field private final mImageSettings:Lcom/android/camera/ImageSettings;

.field private mImageSettingsController:Lcom/android/camera/IImageSettingsController;

.field private mOnButtonClickedListener:Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;

.field private mOnLevelChangedListener:Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;

.field private mValueProperty:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m_Context:Landroid/content/Context;

.field private m_Degree:Landroid/widget/ImageView;

.field private m_Icon:Landroid/widget/ImageView;

.field private m_Level:I

.field private m_MinusBtn:Lcom/htc/widget/HtcAddButton;

.field private m_PlusBtn:Lcom/htc/widget/HtcAddButton;

.field private m_Title:Landroid/widget/TextView;

.field private m_TypeValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    new-instance v1, Lcom/android/camera/ImageSettings;

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-direct {v1, v0}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/ImagePropertyItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->decreaseLevel()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/widget/ImagePropertyItem;)Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mOnButtonClickedListener:Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/ImagePropertyItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->increaseLevel()V

    return-void
.end method

.method private decreaseLevel()V
    .locals 1

    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->onLevelChanged()V

    goto :goto_0
.end method

.method private increaseLevel()V
    .locals 2

    const/16 v1, 0x8

    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    if-le v0, v1, :cond_0

    iput v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->onLevelChanged()V

    goto :goto_0
.end method

.method private mapFromLevel(I)F
    .locals 3

    const/4 v2, 0x4

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    add-int/lit8 v1, p1, 0x0

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    sub-int v1, p1, v0

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method private mapToLevel(F)I
    .locals 5

    const/4 v4, 0x4

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f00

    const/high16 v1, -0x4080

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    const/high16 p1, -0x4080

    :cond_0
    :goto_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    int-to-float v1, v4

    add-float/2addr v2, p1

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x0

    :goto_1
    return v1

    :cond_1
    cmpl-float v1, p1, v2

    if-lez v1, :cond_0

    const/high16 p1, 0x3f80

    goto :goto_0

    :cond_2
    int-to-float v1, v4

    mul-float/2addr v1, p1

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method private setBrightnessValue()V
    .locals 4

    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-direct {p0, v1}, Lcom/android/camera/widget/ImagePropertyItem;->mapFromLevel(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Float;

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    iget-object v2, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/IImageSettingsController;->applyImageSettings(Lcom/android/camera/ImageSettings;Z)V

    :cond_0
    return-void
.end method

.method private setContrastValue()V
    .locals 4

    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-direct {p0, v1}, Lcom/android/camera/widget/ImagePropertyItem;->mapFromLevel(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Float;

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    iget-object v2, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/IImageSettingsController;->applyImageSettings(Lcom/android/camera/ImageSettings;Z)V

    :cond_0
    return-void
.end method

.method private setSaturationValue()V
    .locals 4

    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-direct {p0, v1}, Lcom/android/camera/widget/ImagePropertyItem;->mapFromLevel(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Float;

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    iget-object v2, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/IImageSettingsController;->applyImageSettings(Lcom/android/camera/ImageSettings;Z)V

    :cond_0
    return-void
.end method

.method private setSharpnessValue()V
    .locals 4

    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-direct {p0, v1}, Lcom/android/camera/widget/ImagePropertyItem;->mapFromLevel(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    iget-object v2, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettings:Lcom/android/camera/ImageSettings;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/IImageSettingsController;->applyImageSettings(Lcom/android/camera/ImageSettings;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDegreeImage(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f020113

    goto :goto_0

    :pswitch_1
    const v0, 0x7f020114

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020115

    goto :goto_0

    :pswitch_3
    const v0, 0x7f020116

    goto :goto_0

    :pswitch_4
    const v0, 0x7f020117

    goto :goto_0

    :pswitch_5
    const v0, 0x7f020118

    goto :goto_0

    :pswitch_6
    const v0, 0x7f020119

    goto :goto_0

    :pswitch_7
    const v0, 0x7f02011a

    goto :goto_0

    :pswitch_8
    const v0, 0x7f02011b

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public initialize(ILcom/android/camera/CameraThread;)V
    .locals 10

    const v3, 0x2080009

    const v2, 0x2080008

    const v1, 0x2080007

    const/4 v9, 0x0

    iput p1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_TypeValue:I

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    const-class v4, Lcom/android/camera/IImageSettingsController;

    invoke-virtual {v0, v4}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IImageSettingsController;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/android/camera/IImageSettingsController;

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v0, 0x7f030010

    invoke-virtual {v7, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v0, 0x7f080069

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Icon:Landroid/widget/ImageView;

    const v0, 0x7f08007a

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/camera/CameraThread;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v8

    packed-switch p1, :pswitch_data_0

    const-string v0, "ImagePropertyItem"

    const-string v1, "initialize - Unknown value!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0125

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lcom/android/camera/CameraSettings;->brightness:Lcom/android/camera/property/Property;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    :goto_1
    const v0, 0x7f08007b

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAddButton;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_MinusBtn:Lcom/htc/widget/HtcAddButton;

    const v0, 0x7f08007e

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAddButton;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_PlusBtn:Lcom/htc/widget/HtcAddButton;

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_MinusBtn:Lcom/htc/widget/HtcAddButton;

    const v4, 0x2080010

    const v5, 0x208000f

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAddButton;->setButtonDrawableResources(IIIII)V

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_PlusBtn:Lcom/htc/widget/HtcAddButton;

    const v4, 0x2080003

    const v5, 0x2080002

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAddButton;->setButtonDrawableResources(IIIII)V

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_MinusBtn:Lcom/htc/widget/HtcAddButton;

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAddButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_PlusBtn:Lcom/htc/widget/HtcAddButton;

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAddButton;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->updateLevel()I

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    const v0, 0x7f08007c

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Degree:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Degree:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ImagePropertyItem;->getDegreeImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_MinusBtn:Lcom/htc/widget/HtcAddButton;

    new-instance v1, Lcom/android/camera/widget/ImagePropertyItem$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/ImagePropertyItem$1;-><init>(Lcom/android/camera/widget/ImagePropertyItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAddButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_PlusBtn:Lcom/htc/widget/HtcAddButton;

    new-instance v1, Lcom/android/camera/widget/ImagePropertyItem$2;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/ImagePropertyItem$2;-><init>(Lcom/android/camera/widget/ImagePropertyItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAddButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lcom/android/camera/CameraSettings;->contrast:Lcom/android/camera/property/Property;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lcom/android/camera/CameraSettings;->saturation:Lcom/android/camera/property/Property;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00ef

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v8, Lcom/android/camera/CameraSettings;->sharpness:Lcom/android/camera/property/Property;

    iput-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final isDefaultLevel()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLevelChanged()V
    .locals 2

    iget v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_TypeValue:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "ImagePropertyItem"

    const-string v1, "onLevelChanged - Unknown TypeValue!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Degree:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/ImagePropertyItem;->getDegreeImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mOnLevelChangedListener:Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->mOnLevelChangedListener:Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;

    iget v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-interface {v0, p0, v1}, Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;->onLevelChanged(Lcom/android/camera/widget/ImagePropertyItem;I)V

    :cond_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->setBrightnessValue()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->setContrastValue()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->setSaturationValue()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/widget/ImagePropertyItem;->setSharpnessValue()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public resetDefaultLevel()V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-virtual {p0}, Lcom/android/camera/widget/ImagePropertyItem;->onLevelChanged()V

    return-void
.end method

.method public final setOnButtonClickedListener(Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mOnButtonClickedListener:Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;

    return-void
.end method

.method public final setOnLevelChangedListener(Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mOnLevelChangedListener:Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;

    return-void
.end method

.method public updateLevel()I
    .locals 2

    iget-object v1, p0, Lcom/android/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/widget/ImagePropertyItem;->mapToLevel(F)I

    move-result v0

    return v0
.end method
