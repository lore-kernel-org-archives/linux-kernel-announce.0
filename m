Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB3CCA6F
	for <linux-kernel-announce@vger.kernel.org>; Mon, 20 Oct 2025 01:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760925595; cv=none; b=dSXQKEscALuq1AbnKHCGb+2NF1oC8qOhLn5dkWCxFwGSx+dZ69xvq+HmcWQJYpRmZ+OoxwARk6bafYWFfHi/HBZmGmZDzefYOVUBEgG8ZZ9zb39vkgCbpsI3AYsQ/jnGZ1vaO+6W/IXqI5g1QG06F+zoQFE325nC8G2bKXgG8lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760925595; c=relaxed/simple;
	bh=axNpDWOIzmvUGyzyrc0gXKvtl5Gh/2SJmDwdc3QTvlM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=aXhq0x43g+MgSpIltJTmmZwnNqw1VHnC48aih/Xgxp4KMb20FkeeyUr+f0FjurFk+zZkxivVZu16fXNyBtx9WUPhTHxAmTvvCbE8j1lrtpNhiFj6Cgu6O7rioqZVzRS9u1UXi8wHGquV7oT8SdXbydpCm3SANGZUpIYbAxS3xmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1760925595;
	bh=axNpDWOIzmvUGyzyrc0gXKvtl5Gh/2SJmDwdc3QTvlM=;
	h=Subject:From:To:Date:From;
	b=hHMv7WXqiRIJ/z/oev9N/c202ohbXheDIesRqzSKER68Q3VlYEQt5zpSU+0CExdFj
	 Rd1EIRbEUPltqSFL3UfwM3L5pQbkH+SbxPUDKL8CD1+r6tQXDeXTXmntwczBu9XHCK
	 /BevvdA8w1Em06ChYbd1meT84sONJMR3OSuIhhg0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D92FC4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Mon, 20 Oct 2025 01:59:55 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B16B539FEB78
	for <linux-kernel-announce@vger.kernel.org>; Mon, 20 Oct 2025 01:59:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18-rc2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 20 Oct 2025 01:59:37 +0000
Message-Id: <20251020015937.release-6.18-rc2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18-rc2
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.18-rc2.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.18-rc2/v6.17

Linux kernel version 6.18-rc2 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.18-rc2.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.18-rc2/v6.17

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.18-rc2/v6.18-rc1

