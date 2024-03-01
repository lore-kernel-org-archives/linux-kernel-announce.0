Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FE23A8F3
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709297742; cv=none; b=XKIoKHkZGbmb5sn1u9XTrg0uTNPPIOYdPjUvqvu3OuNlu70IsWIrG23Pb/5a7N1HB+rKCNgXbKyd321fmYsObSoaAbgdgne5lx0Bm2IMlqB4DG/0MJ0tpI4AsPaW36EGJjDShe2UXHzfPQGF9yuJyUq/dD/7PZspwpCZ/+J1g4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709297742; c=relaxed/simple;
	bh=zAUvTpwckjWp36DR1g34nQzNGqqm75KyVekrAcGF97U=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QqLBpy/6mL0+yvWOcOvjDUYjjMKnPFyrtQzKc38GFymWzZyPK8ZM1ddk2iYyXOrEq0+kS6KnDfd16dP8wuMR/Ha6IAOJU69091AMIpciOPdSoG29ZHDqMM22hJwb50tsH8uUPTf+GXwhDuGI6yfFGw46gBVgmCnmSTAyY9IBdug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1709297742;
	bh=zAUvTpwckjWp36DR1g34nQzNGqqm75KyVekrAcGF97U=;
	h=Subject:From:To:Date:From;
	b=MNF32ZTgDwyDdMX5C9RGR/fieZXd52Z2iapiDUpP4fFfIobgE/ISaMAKYrKWrfXN0
	 EZrd8E05j4t7ID4219pCjMGAf9vscuCLNTEuDSUK+HcEfXRWxjJLSgoX/A72kIthmA
	 K2zdFe7wd24HKPf8vxj6QFv7JZkhbbH1saLTh2qE=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00F43C433C7
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:55:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id DE6A2C595C4
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:55:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.19 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 01 Mar 2024 12:55:41 +0000
Message-Id: <20240301125541.release-6.6.19@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.19
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.19.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.19.xz

Linux kernel version 6.6.19 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.19.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.19.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.19.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.19/v6.6.18

