Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CA3641C65
	for <linux-kernel-announce@vger.kernel.org>; Fri, 16 Feb 2024 18:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708108543; cv=none; b=NpL86UIAvA2giUcSzOXqOVxpgPaPgeJuevwllGgNq0A87/qY2udsTrNGaaG3kdsLymzBe3sEkO4NjGR54g7n19l3LbXlyUuJKqEab+4NKlEJHVmoZuDrK526jRBgC8m9aquRFN2Kikm6WQGms6JB9J64CnSvxLbeKOetX0cKBlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708108543; c=relaxed/simple;
	bh=TXG2Uy2XX4d+61rlKYQjKEhiNWDEGFS+Quwjwn/i9G4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uizaTlnqKblvZz1B7RM0Hui6rDDW2pUwrQ/gIcX2iVn4o6ZM/y9A/3LaJbwGq82WC47Ef/vN/h92sAN6X08yal+pnfK10w5j0NpBj7LT9W3mCS2TQ8zHhwbP1GZL0BNB2XZvUbko6fRoRYnayqqTxMx6utUsPVkmzBOrwLkIIMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1708108543;
	bh=TXG2Uy2XX4d+61rlKYQjKEhiNWDEGFS+Quwjwn/i9G4=;
	h=Subject:From:To:Date:From;
	b=jmbUYKHYjdQs02wXAuSSxs4j7H43WDhwcFiXuSV9caCoh6JlN2i7UoAKps6OD+f9r
	 L+3niyN5w97XMxkB28KdjEZ+NwHkA3yjaY+g8UX0RnmDF5wsG/ze8nqQ6oF+SPtuOL
	 etMhJhLcNgstPNl3f4IRHho5PhyPqN6xMnRqsnJE=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 50E9AC433F1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 16 Feb 2024 18:35:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 290A7D8C968
	for <linux-kernel-announce@vger.kernel.org>; Fri, 16 Feb 2024 18:35:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.7.5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 16 Feb 2024 18:35:43 +0000
Message-Id: <20240216183543.release-6.7.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.7.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.5.xz

Linux kernel version 6.7.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.7.5/v6.7.4

