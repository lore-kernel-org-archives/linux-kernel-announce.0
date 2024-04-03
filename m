Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A111487F8
	for <linux-kernel-announce@vger.kernel.org>; Wed,  3 Apr 2024 13:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712152245; cv=none; b=VQx/T6CDYTiH21d48DzCbfOFPq4xpekM4LGFTbCyz/9tYhBXXGMdAs5DyNOZjBy2mJoG0580lxQxkp3P6OnspFg34vfpkcNAm/wmwXe8UB+S5hbVdBu4KsP10pNjvmoJjFG4QWBLFH+KYdtCeBFjK4Zbbt6Zn+c3RZArTWpCFc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712152245; c=relaxed/simple;
	bh=4O5j4V3DFWyI5ZwBv1Gnm4tu3IYJclEg/wP7PQsWVBE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Ct+MXKTDzuKYXoj8W3MgM8NsVI6mYkMvkoKGCFifFL0cvUTniEV9R2xvl5/1+48ZCioLwIYWK0FQ5oOpe5OtFsAIDVWg/RYdR3mwrdzasrv6gwMYugXF3G4XJCOgqXnHkdhT7pyofy38QRN8Kuw6Vms1ZJLQ7t4Yd+UFxbQRiiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1712152245;
	bh=4O5j4V3DFWyI5ZwBv1Gnm4tu3IYJclEg/wP7PQsWVBE=;
	h=Subject:From:To:Date:From;
	b=Y64zUG+BNBXbmuyXp+IoHVR7t2idb46BVa5aRqDrzb3wDGpMRZ8fdDOuwJQApAe/J
	 s2VRL81elro5pZNFdDnF4jD1bKf7EYJlId+UeeuBFYm+Qg1apVgIzox6f/5Q7GuTka
	 qwHJIaTEHPs/K4qU0rzuGaoC/NNqfrO97quzgvL0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75121C433F1
	for <linux-kernel-announce@vger.kernel.org>; Wed,  3 Apr 2024 13:50:45 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 694E7D9A155
	for <linux-kernel-announce@vger.kernel.org>; Wed,  3 Apr 2024 13:50:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.24 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 03 Apr 2024 13:50:45 +0000
Message-Id: <20240403135045.release-6.6.24@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.24
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.24.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.24.xz

Linux kernel version 6.6.24 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.24.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.24.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.24.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.24/v6.6.23

