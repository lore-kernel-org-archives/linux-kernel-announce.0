Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B1972602
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Oct 2025 15:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760886057; cv=none; b=FH2089rKOdlCUkhszCqQLUS6cOJYXI+nl7zFBrjwVhStb33bOeamMEp6noXEY+gmx8H9kxT3D2j6VaPEtlD8wZHkLmuPBw1vB2GW9CC/sqJMkXLRfrKBVc/02LzrAdE/FhStRlx9f2vyZ08Fog9/dL0OC5OcWoCiE3dZTGCFqTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760886057; c=relaxed/simple;
	bh=rD5mzAaDQ27HdBgo2kyaAUvFIfnNXp0Lnpxer3kF6n0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=e0MkcTe1hQILexa62mdlWac10KgTxPo7ue74YHt9RdIPYQhXBLTK16KU38/v/GL4pki8/4Aqn1y7Kj8aFBEgoAJS5a+gG6fVhd69a7F/w/F2hNGQWWt5rUA95Iv+Opcz9hh5bgpsyKsaAso7+RDjJutkWnRPW0mf9ctKw4LSZpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1760886057;
	bh=rD5mzAaDQ27HdBgo2kyaAUvFIfnNXp0Lnpxer3kF6n0=;
	h=Subject:From:To:Date:From;
	b=cXqWIIyT6i+TURkaVPVttq4kRbSzfY0R1Fj5jxlPTxjT6XgxtJRo/LxjQonGG4Yde
	 m8Jfvu8wvlUC06mS60VYSSXjorKGyNzfvmDDtdUWD2oJ5kAbGu6IeEwt26g0KVsHd+
	 xdHcyAMLRDptoVps+oUDw1O64r+HY4vSwEwGYUpA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAB9AC4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Oct 2025 15:00:56 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74B0739FEB74
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Oct 2025 15:00:40 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17.4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 19 Oct 2025 15:00:38 +0000
Message-Id: <20251019150038.release-6.17.4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17.4
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.4.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.4.xz

Linux kernel version 6.17.4 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.4.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.4.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.4.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.17.4/v6.17.3

