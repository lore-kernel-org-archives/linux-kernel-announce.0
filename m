Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A75E9155310
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714661449; cv=none; b=en/dRcgGhgkTU7LTaIKCxe9bP2zD+ZIC6TlLOYbZm4dUf8JpSdrDeKLCUFCDOo+Lk1Kh5RYYAWco9sV6LDTDjCoFQ5iCzaZY3dGQuQmcKlwiMHa6iYwlFCzN55mHZJ5XTPPDKUu7EE85nCac47qAfEn46ZITMn+MmiJlIsK0jks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714661449; c=relaxed/simple;
	bh=ClxNaywAnfX1HaBPpGocANi5nxd2je8oqzhUS+eHkYk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=GP01DJsrZYoeOLjie75YDaxdbmPDncB6X5XL4eqmbJwUALd1qD+hQKY9ZxXmTy24CWkIXCbBIw8D2q+tyMRUHvNPdQdJ8wSOeW8cpSsBw2znO7d8xqN+rXc0ZgxWhIo7WSjpIScokg40onpAYGAShw/fp5gKOmx5WLAj1jpUxwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1714661449;
	bh=ClxNaywAnfX1HaBPpGocANi5nxd2je8oqzhUS+eHkYk=;
	h=Subject:From:To:Date:From;
	b=eKYuE1MgfxR/WjMtOF7Fu6NF1+UXS0vgFj1Gcy7zzP66M37ikRXevTdRgg8cFJoIb
	 jHlDuPRNFPDst0uRY7UF8knLI4dbNSs85CdOl99MKeiV/7nXdhM9RXoM6ciWGFNuRt
	 +j+Ku/XgBVEYqED/oiKVsSog5NOFE+iyKeVNUbJg=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5DE03C113CC
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:50:49 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 5349AC4333C
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 May 2024 14:50:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.158 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 May 2024 14:50:49 +0000
Message-Id: <20240502145049.release-5.15.158@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.158
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.158.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.158.xz

Linux kernel version 5.15.158 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.158.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.158.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.158.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.158/v5.15.157

