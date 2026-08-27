Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5A9230264
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 12:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787834224; cv=none; b=oEBbUYR8B8hwcnBnwdODF5xIllBh/MhCqjf8Sc25/FUoOfuz2TY/Zo5U+PVlfVRF26f9CIB1xd21JjBw1viB0eHG9syw8HRwcibhaaA3iRCF0c7fMt0u+6T9PDKZ5UZnYHDmjeqMVmEADiKNcOkfnlGovlyPbutWb/LB2TEt2Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787834224; c=relaxed/simple;
	bh=CE7+NQ+96ysOSNf0TZTK9B0PELfXAVz3Oumtb28CnuY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=t7XC8j62DuFKMGvEmGWdSrSR1GHJ4wmhaD4Xa2ycH33DxiwCJmYAzRRUt9GcU/Jah2xxFDdoedGbKlRvj1IKb4jsOU5FAOJH00SOIvvirQpJeKpCWWtdBuAGGcZrlKKOlcUGvkIfIj+8k3e8Equm6Hbrl4yzVhMOh7WcSbFr4NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787834224;
	bh=CE7+NQ+96ysOSNf0TZTK9B0PELfXAVz3Oumtb28CnuY=;
	h=Subject:From:To:Date:From;
	b=imn/XWRVNlo2GFqI6YlJPEBWW3aD+u8Bryk3yy3Dj20Wnp1dOlh4pUT/C1ZLNm89y
	 P2DGwy6eY0F7m0XaPquuYfjp4a+9cl+kLLWtBcMqCuEVQlSlsVcFs1c2a9ZqwGqTp+
	 nLPNDv5ZIaK0GEtTmA4R5qHZZnxoIOZQgjLmyRy4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CF8A1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 12:37:03 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D3A813809A24
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 12:36:09 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.267 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 27 Aug 2026 12:36:08 +0000
Message-Id: <20260827123608.release-5.10.267@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.267
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.267.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.267.xz

Linux kernel version 5.10.267 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.267.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.267.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.267.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.267/v5.10.266

