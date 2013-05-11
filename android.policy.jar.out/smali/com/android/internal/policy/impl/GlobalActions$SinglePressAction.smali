.class abstract Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I

.field private final mStatusResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .parameter "iconResId"
    .parameter "messageResId"

    .prologue
    .line 881
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 882
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 883
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 885
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    .line 886
    return-void
.end method

.method protected constructor <init>(III)V
    .locals 1
    .parameter "iconResId"
    .parameter "messageResId"
    .parameter "statusResId"

    .prologue
    .line 895
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 897
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 898
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 899
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    .line 900
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "iconResId"
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    .line 888
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 889
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 890
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 891
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 892
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    .line 893
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 25
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    .line 914
    const/16 v19, 0x0

    .line 915
    .local v19, v:Landroid/view/View;
    const/4 v9, 0x0

    .line 916
    .local v9, icon:Landroid/widget/ImageView;
    const/4 v12, 0x0

    .line 917
    .local v12, messageView:Landroid/widget/TextView;
    const/16 v16, 0x0

    .line 921
    .local v16, statusView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    move/from16 v21, v0

    if-nez v21, :cond_7

    .line 925
    const v21, 0x4030006

    const/16 v22, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v21

    move-object/from16 v2, p3

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 926
    const v21, 0x4110008

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #icon:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 927
    .restart local v9       #icon:Landroid/widget/ImageView;
    const v21, 0x4110003

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #messageView:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 928
    .restart local v12       #messageView:Landroid/widget/TextView;
    const/16 v16, 0x0

    .line 936
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    :goto_1
    if-eqz v16, :cond_0

    .line 943
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 946
    :cond_0
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 947
    if-eqz v16, :cond_1

    .line 948
    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 949
    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 950
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 988
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 990
    .local v5, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 991
    .local v7, config:Landroid/content/res/Configuration;
    iget-object v15, v7, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 992
    .local v15, skinPackage:Ljava/lang/String;
    sget-boolean v21, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v21, :cond_2

    const-string v21, "GlobalActions"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SinglePressAction item, skinPackage == "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_2
    sget-object v21, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    .line 994
    .local v20, version:F
    const/high16 v21, 0x4080

    cmpl-float v21, v20, v21

    if-ltz v21, :cond_4

    .line 996
    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    const-string v21, "default"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 997
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 998
    .local v13, res:Landroid/content/res/Resources;
    const-string v21, "common_list_item_background"

    const-string v22, "drawable"

    const-string v23, "com.htc"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 999
    .local v4, BGId:I
    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1006
    .end local v13           #res:Landroid/content/res/Resources;
    .local v11, listItemBG:Landroid/graphics/drawable/Drawable;
    :goto_2
    if-eqz v19, :cond_4

    if-eqz v11, :cond_4

    .line 1007
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    .line 1008
    .local v10, leftPadding:I
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingTop()I

    move-result v18

    .line 1009
    .local v18, topPadding:I
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingRight()I

    move-result v14

    .line 1010
    .local v14, rightPadding:I
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 1011
    .local v6, bottomPadding:I
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1012
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1, v14, v6}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    .end local v4           #BGId:I
    .end local v6           #bottomPadding:I
    .end local v7           #config:Landroid/content/res/Configuration;
    .end local v10           #leftPadding:I
    .end local v11           #listItemBG:Landroid/graphics/drawable/Drawable;
    .end local v14           #rightPadding:I
    .end local v15           #skinPackage:Ljava/lang/String;
    .end local v18           #topPadding:I
    .end local v20           #version:F
    :cond_4
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "list_primary_m"

    const-string v23, "style"

    const-string v24, "com.htc"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1023
    .local v8, fontStyle:I
    if-eqz v8, :cond_5

    if-eqz v12, :cond_5

    if-eqz p1, :cond_5

    .line 1024
    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1025
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "list_secondary_m"

    const-string v23, "style"

    const-string v24, "com.htc"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1026
    if-eqz v8, :cond_6

    if-eqz v16, :cond_6

    if-eqz p1, :cond_6

    .line 1027
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1029
    :cond_6
    return-object v19

    .line 930
    .end local v5           #am:Landroid/app/IActivityManager;
    .end local v8           #fontStyle:I
    :cond_7
    const v21, 0x4030005

    const/16 v22, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v21

    move-object/from16 v2, p3

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 931
    const v21, 0x4110008

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #icon:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 932
    .restart local v9       #icon:Landroid/widget/ImageView;
    const v21, 0x4110003

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #messageView:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 933
    .restart local v12       #messageView:Landroid/widget/TextView;
    const v21, 0x4110006

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .end local v16           #statusView:Landroid/widget/TextView;
    check-cast v16, Landroid/widget/TextView;

    .restart local v16       #statusView:Landroid/widget/TextView;
    goto/16 :goto_0

    .line 940
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 1001
    .restart local v5       #am:Landroid/app/IActivityManager;
    .restart local v7       #config:Landroid/content/res/Configuration;
    .restart local v15       #skinPackage:Ljava/lang/String;
    .restart local v20       #version:F
    :cond_9
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v17

    .line 1002
    .local v17, themeres:Landroid/content/res/Resources;
    const-string v21, "common_list_item_background"

    const-string v22, "drawable"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1003
    .restart local v4       #BGId:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .restart local v11       #listItemBG:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 1016
    .end local v4           #BGId:I
    .end local v7           #config:Landroid/content/res/Configuration;
    .end local v11           #listItemBG:Landroid/graphics/drawable/Drawable;
    .end local v15           #skinPackage:Ljava/lang/String;
    .end local v17           #themeres:Landroid/content/res/Resources;
    .end local v20           #version:F
    :catch_0
    move-exception v21

    goto/16 :goto_3
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 903
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPress()V
.end method
