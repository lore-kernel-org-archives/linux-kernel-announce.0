Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFE5A218AB3
	for <linux-kernel-announce@vger.kernel.org>; Thu,  9 Jan 2025 13:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736427631; cv=none; b=cy7CfdQNMVxlMmzz/8yLuxBa8DiVezcIUI3Apy5JfYY0cqFS2Ous1zJ0ZCOfWoqERX1aWdRNZvkQF1duNyBJaCJLerQ//XtGfVFlZh3e27uX9ZM+cttETxKtohvkM6t0HgqZzZh+cs4wbIWPIt66/rxrN8l1gZQsKwyjMRMtW5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736427631; c=relaxed/simple;
	bh=eCUN4PME6t7fpJYAHzZt8qMcV9CuJluueDPZoYA2xds=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=GN3GRYrJB2mKnwI379nCEYGS3qKru6ZllZq9kaQ2ih9iwgDoIhPenTfSykDuPkI63nLhb/0ccz2A69R6GomNvYFT3esphln5M7FcvX8kF84J5dA0k5qCPWLCG4PwxOAir1uGUhZSYemEN89Pg6HwmjgODZoU7feRFQKmWxYMY7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1736427631;
	bh=eCUN4PME6t7fpJYAHzZt8qMcV9CuJluueDPZoYA2xds=;
	h=Subject:From:To:Date:From;
	b=vm0FXk4UCqYmm2DnMkVvKuguc3wp+nodtKOIp7ZpD9xLH/EdzmmTlxgtIRLWHWKcO
	 fecgWW7sYggn6ANCx7EpWp1HPyGIkQJDNAalFMcy1TpT3lpwi67QwCYu0x3CrIBDKR
	 A33ROwtCxllr+adyBvLVMJVmJoVIlI5F/NPoHSc8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37122C4CED2
	for <linux-kernel-announce@vger.kernel.org>; Thu,  9 Jan 2025 13:00:31 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F03483805DB2
	for <linux-kernel-announce@vger.kernel.org>; Thu,  9 Jan 2025 13:00:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 09 Jan 2025 13:00:52 +0000
Message-Id: <20250109130052.release-6.12.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.9.xz

Linux kernel version 6.12.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.9/v6.12.8

