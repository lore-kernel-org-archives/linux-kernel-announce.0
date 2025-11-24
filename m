Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB93A2F5465
	for <linux-kernel-announce@vger.kernel.org>; Mon, 24 Nov 2025 09:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763977282; cv=none; b=d6EJKEU7+AKKstOZhItqlvbVorc8NcrUdOKvqgC/HPc2E68H/bJHcAzDbcPS++y0q7uI22Cj+NAeLODuYXLxFdEEn+Py0uSuPK5ars+8w4tR8M7nxHZUAlBSCf+yIACpMSQCUXYNckreHMeuge/3C2cak6txhddFyUkv1s7E4N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763977282; c=relaxed/simple;
	bh=SxOCLhVvTFnb64ghVqkxhHOawXiMmb/rtl5P23X4Fxw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=AZ6ZmKGovO3JBo+hJFagR4u1y1iD22zFj2I281mT1/SBArJMe7s0j4ZqHRQij9+kW0A4aVP6j+MAP2xp8NKukcvMWHjVmJe/9mn79O9TD1eEJPC1uYDEd4W5gR7uYmU42fFMd/OMSSu4gZHJwgNNETUXk2Sb3Gg8VWdHDeWoQWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1763977282;
	bh=SxOCLhVvTFnb64ghVqkxhHOawXiMmb/rtl5P23X4Fxw=;
	h=Subject:From:To:Date:From;
	b=NyO/xjgm13tAthvQ0v30STPdwXyCQJ+4su3Gh40ILxFg15Nrh4248UvuLTuYesNpo
	 cveTguLpm9sWOpKM8XBmhF00opJ72ak1x4uDlWmbnpurqBXYAjKCWqCOhUuiO/gRcx
	 PlZbvAPat/qatqFQ3NanJirj4asf/9m8ZC7HUGQU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81904C4CEF1
	for <linux-kernel-announce@vger.kernel.org>; Mon, 24 Nov 2025 09:41:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B47BF3A86256
	for <linux-kernel-announce@vger.kernel.org>; Mon, 24 Nov 2025 09:40:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.117 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 24 Nov 2025 09:40:45 +0000
Message-Id: <20251124094045.release-6.6.117@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.117
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.117.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.117.xz

Linux kernel version 6.6.117 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.117.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.117.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.117.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.117/v6.6.116

