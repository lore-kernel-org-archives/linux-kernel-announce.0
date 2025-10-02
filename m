Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C7A30FC3E
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 11:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759405854; cv=none; b=dXyOyY1pbndEOaZPQop69qHjxoFyeTjUNmCO80+LxCtVmZBk+eC7f4W/Is0hW34LAZ9iHDX9repxNzSvSpIadBMmA/RlPVzkX357ggRASgiphaSre8CxR924As+bZGx8Iw3Tn+qToAq/rN1F7CgO5raOIEkojZ8UA2+M4a5oxNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759405854; c=relaxed/simple;
	bh=pLlcC/eyxMrj+x/E3MtYS4neUSPWHLcNMyo9Y3nOXQE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=cxtvnp41IAzqb8Kj8QvDVj3XR3Vybhv/HjelIDwdlSrVt+92tdmnE9e5sXsJ1QVYyCH+T7QtB5XpKljDH0+7up5/kMk61sRqu5jGA85p7IoCugHGxPA8UEJaTh458H0aGVadYQ/lPL4mbD78fwfloVhtEaqVEpWbSf6JDgvoQuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1759405854;
	bh=pLlcC/eyxMrj+x/E3MtYS4neUSPWHLcNMyo9Y3nOXQE=;
	h=Subject:From:To:Date:From;
	b=Ii/Gh/uNihrnSpMxFzfVtpm1iYmx1eDv/bQomYw0p+xspHmkttJCllEKrs8L8nZpQ
	 1T3xJ5nPMJm6/sWdmPqy569VJ50VZEWiFlSikPEaeLsH9m7bwYgx7sraa2rvqCsdnt
	 Th+ZWpn7mu2kBpi4AW7my5XrPOLuNQbq6TGx5prc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3313C4CEF4
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 11:50:53 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EABDD39D0C1A
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 11:50:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.245 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 Oct 2025 11:50:45 +0000
Message-Id: <20251002115045.release-5.10.245@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.245
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.245.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.245.xz

Linux kernel version 5.10.245 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.245.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.245.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.245.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.245/v5.10.244

