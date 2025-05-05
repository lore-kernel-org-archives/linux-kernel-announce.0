Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF4E11FF7C8
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 May 2025 09:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746436804; cv=none; b=c/BFuYIgAeu/uO+js6ub9+wv9zbmXBburznnddrHzQOjBCpJJ1ds5DbubaL2w3ADAo9Fg6+Yy4Jzmn2Ie8Pi3/ntit45Z8epPMlxymMARFnPEkJgvXrIvopslHj8ahvmVDZAu7Id3cSiSadobnil5MH9XM0oOqWKVg8NXgn6LVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746436804; c=relaxed/simple;
	bh=lYh5w5ka/6VltB7pP4N/FHxj3vRk7/6X0RcaYbzRRcc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=qbXEjqUw4nJJGro0ACTsO1JWRBGflecIKnAWtUzcYYhnA/pEii6YjHZfwTaxF3wtMFvS6dneD+F+gU5VhMuLKpjf+M2n2vQ30/RmB80s4ce1IVwhMKvptXcnXYs3Ep90HuLR0bIvpnG1DdzT+XEAdIzT5i0SOwFio9cNORz1kX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1746436804;
	bh=lYh5w5ka/6VltB7pP4N/FHxj3vRk7/6X0RcaYbzRRcc=;
	h=Subject:From:To:Date:From;
	b=g4eLKpB9dBBdfELwW4MoQG8FngbuTSh8IqTwYA/J4WMnq29CylIJxKVoU5R8juJsu
	 M9plL4RjqZvqXNm6p7v80bbDBCEWyldRfky+mFmoRyZsAVStV4BvW1h76yO5zKWC91
	 5yLNgKMYJ2iK5tWXe2p7EyNUj7idxHR/NlSwZI1w=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DF31C4CEE4
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 May 2025 09:20:04 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EFD1D380DBF5
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 May 2025 09:20:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.137 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 05 May 2025 09:20:43 +0000
Message-Id: <20250505092043.release-6.1.137@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.137
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.137.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.137.xz

Linux kernel version 6.1.137 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.137.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.137.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.137.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.137/v6.1.136

