Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73D3192D8A
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Aug 2026 06:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786084262; cv=none; b=AFUzkZPCPp5MgVbeY7wRgEo/dPYHtb+S33sw2DwWm/AkWXSjfP8daEHqU/ZNxKxsqCiJ2AgB/csuUzgzwE7AJD6veIjXDFk7OAclvEILpSL4R++5r9IwHGeo1Q9fK/PQu/URJvw0OApYX8blGnoehgfYDOWbmB1eBQEWQcbmR7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786084262; c=relaxed/simple;
	bh=CAatDmqmYsXhk+/BOmo0FwHUtxnueAwNGH5sctfIwTY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=BaTYlkjFSFdnvR34niP5ZIaF2npB3dv5jrCuB8jW+jz85s1gclhtRgVVUx2lByp0PqvxzHyQ9FpLMG2DNkyF2VjOBJM19RIbRFuG287YT+Ihhrv/Y1bvdnpcMgaoRxOliFPOGkUzs2/eqhqnJFKuv2TNyHT9hx1sHweDBrJ56/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1786084262;
	bh=CAatDmqmYsXhk+/BOmo0FwHUtxnueAwNGH5sctfIwTY=;
	h=Subject:From:To:Date:From;
	b=h0V8TB88xqxJOYu8gRcP0EjnbL/VoYAjfjONX3mIw96LBbbXTM4D3TIZx5liNtpYO
	 UKoR2zQxpZSa+Rly42UcvkeRa50zL8p7BOtQ4PUQjZdA2M23uPVgQ2CB3ObBzTF6PY
	 vsaFPAQv0oQSBW2M3cYXGry/UrYZ+r43i3qvWbf4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EFE81F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Aug 2026 06:31:01 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9648D380A961
	for <linux-kernel-announce@vger.kernel.org>; Fri,  7 Aug 2026 06:30:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.150 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 07 Aug 2026 06:30:20 +0000
Message-Id: <20260807063020.release-6.6.150@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.150
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.150.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.150.xz

Linux kernel version 6.6.150 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.150.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.150.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.150.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.150/v6.6.149

