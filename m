Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B916731F981
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 11:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778238077; cv=none; b=q+HULqxK+CXu23CqfVj+nD8KUY3Mu2fPYMaerAhc8nJn1v7UOP8hqZ8deBQNbInRgaod56aEh8fmoglJdcwnCE6DQVYj0DHGD9bqyWIx831hDEO6zaKAjIdFD4OyRnTSsFOuhnTtNqiJfZqHcfcD9V22IVvn2z0XDW6n/Sd6bOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778238077; c=relaxed/simple;
	bh=Wih44Il9Jqf7Dp7ltxf1/pDzitIuXfRhM/LIhZhLhmg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=HGWccl/1iXm7hrCQqvsQ4dVbmz0BSgas6v5Bj69bmNQAs9103Ga9D7oIdhAnWRJVQ/07wwxsmJS5UZCzuNJ2fv1V6ALRY3BJMM9UnlWKUIMpjGkgmHEI3NgUgWuLEsI3wiuEWoNRWdVn5U5Db7W6Ov7pe61jz+c2ufVhSifhhTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778238077;
	bh=Wih44Il9Jqf7Dp7ltxf1/pDzitIuXfRhM/LIhZhLhmg=;
	h=Subject:From:To:Date:From;
	b=Vu/Y4b0qv9KKuDEZmdUp5UhMd2fvOYgmSXbKeGTqEvfFVSENRmNMV2lNvFOLW0c1i
	 H3GLXSVCUSciaPm+FOxzB0hZnvN6AIpzzOTycvwihDkC3rg5KqYkM7dBqGPrI372AQ
	 CccYlbv/91yPdSxdBb14qbRf2HJ8V+mdMSS8QzNc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90BDCC2BCB0
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 11:01:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7CE26381195A
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 May 2026 11:00:27 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.205 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 08 May 2026 11:00:26 +0000
Message-Id: <20260508110026.release-5.15.205@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.205
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.205.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.205.xz

Linux kernel version 5.15.205 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.205.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.205.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.205.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.205/v5.15.204

