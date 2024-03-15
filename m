Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9CDA4CB58
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710531050; cv=none; b=Qc3NCCusePcGiWpACVBwDWRRVsnFUnqhC+gEwCY2IDaG2usVaOQnNWiEEjnRqzBRrK5V21xQuE0MAlLjVtx/Wvi2LgDz5C/HO5O38JZApxanJ8sbm0AvsG3B136JGPWiZHxc83Vd22Jmj5UUx4aBB1pSHfFwWEPWURpjK6dHRbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710531050; c=relaxed/simple;
	bh=X7hSZpa9HTQlt8TTxoQLCmbqNJ2jqfanHgBo0IQ+fh4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=CB5rWpgZAftptIRdHaTo0PZOuFi+gqZYH8Brwn1HV31VtCU+iJx2w4mwrBrkfKh2zLTV8/9+8cif8B1RDeH0FhThtVHlOhOuO6qqpCSeSemNWyQ7Z/bhXrVQ6BFBgypo2jEDqVQcC7UXIecPcxKoRN4DZ8SPNWGKW/jUtPKPX1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1710531049;
	bh=X7hSZpa9HTQlt8TTxoQLCmbqNJ2jqfanHgBo0IQ+fh4=;
	h=Subject:From:To:Date:From;
	b=v8eaxgRjr2MhJfU0NtjUcGyX5Kokgcr/+2rDSoIP5yETBo12ul4b71cZcM7vLNosp
	 AOxXPieR+Bjb1HLklqzYh3FVldYScbsNemdL1MO26MupSRbjnBO5qwFklW7RTLQqgS
	 kaycn1t21e3XLFdIzES8JfUXmxAQnmsbO2/WO9a0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD49C433F1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:30:49 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 97C82D95060
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 Mar 2024 19:30:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.152 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 Mar 2024 19:30:49 +0000
Message-Id: <20240315193049.release-5.15.152@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.152
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.152.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.152.xz

Linux kernel version 5.15.152 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.152.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.152.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.152.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.152/v5.15.151

